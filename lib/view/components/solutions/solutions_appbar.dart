import 'package:flutter/material.dart';
import 'package:treninoo/view/components/button.dart';

class SolutionsAppBar extends StatefulWidget {
  const SolutionsAppBar({Key key}) : super(key: key);

  @override
  _SolutionsAppBarState createState() => _SolutionsAppBarState();
}

class _SolutionsAppBarState extends State<SolutionsAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      BeautifulBackButton(),
      SizedBox(width: 24),
      Expanded(
        child: Text(
          "Soluzioni",
          style: TextStyle(
            fontSize: 26,
            // color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ]);
  }
}
