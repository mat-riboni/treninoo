const String URL = "www.viaggiatreno.it";

/// ... + trainCode
const String GET_STATION_CODE =
    '/viaggiatrenonew/resteasy/viaggiatreno/cercaNumeroTrenoTrenoAutocomplete/';

// ... + stationCode/trainCode
const String GET_TRAIN_INFO =
    '/viaggiatrenonew/resteasy/viaggiatreno/andamentoTreno/';

const String GET_STATION_NAME =
    '/viaggiatrenonew/resteasy/viaggiatreno/autocompletaStazione/';

// ... + departureStationCode/arrivalStationCode/date
const String GET_SOLUTIONS =
    '/viaggiatrenonew/resteasy/viaggiatreno/soluzioniViaggioNew/';