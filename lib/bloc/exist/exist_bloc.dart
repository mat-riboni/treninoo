import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:treninoo/bloc/exist/exist.dart';
import 'package:treninoo/model/SavedTrain.dart';
import 'package:treninoo/repository/train.dart';

import '../../exceptions/more_than_one.dart';
import '../../exceptions/no_station.dart';
import '../../repository/saved_train.dart';

class ExistBloc extends Bloc<ExistEvent, ExistState> {
  final TrainRepository _trainRepository;
  final SavedTrainRepository _savedTrainRepository;

  ExistBloc(TrainRepository trainRepository,
      SavedTrainRepository savedTrainRepository)
      : _trainRepository = trainRepository,
        _savedTrainRepository = savedTrainRepository,
        super(ExistInitial()) {
    on<ExistRequest>(_mapExistRequest);
  }

  Future<void> _mapExistRequest(
      ExistRequest event, Emitter<ExistState> emit) async {
    emit(ExistLoading());
    try {
      final trainInfo = await _trainRepository.getTrainStatus(event.savedTrain);
      _savedTrainRepository.addRecent(SavedTrain.fromTrainInfo(trainInfo));
      emit(ExistSuccess(trainInfo: trainInfo));
    } on MoreThanOneException catch (exception) {
      emit(ExistMoreThanOne(
        savedTrain: exception.savedTrain,
        stations: exception.stations,
      ));
    } on NoStationsException catch (_) {
      emit(ExistFailed(savedTrain: event.savedTrain, type: event.type));
    } catch (exception, stackTrace) {
      await Sentry.captureException(
        exception,
        stackTrace: stackTrace,
      );
      emit(ExistFailed(savedTrain: event.savedTrain, type: event.type));
    }
    emit(ExistInitial());
  }
}
