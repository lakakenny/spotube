import 'package:flutter/material.dart';
import 'package:spotube/collections/assets.gen.dart';

class NotFound extends StatelessWidget {
  final bool vertical;
  const NotFound({Key? key, this.vertical = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widgets = [
      SizedBox(
        height: 150,
        width: 150,
        child: Assets.emptyBox.image(),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Nothing found", style: Theme.of(context).textTheme.headline6),
          Text(
            "The box is empty",
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ],
      ),
    ];
    return vertical ? Column(children: widgets) : Row(children: widgets);
  }
}
