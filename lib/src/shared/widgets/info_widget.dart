import 'package:flutter/material.dart';

import '../models/_export_models.dart';

class InfoWidget extends StatelessWidget {
  final InfoModel infoModel;

  const InfoWidget({Key? key, required this.infoModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 46),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: infoModel.data,
                  style: Theme.of(context).textTheme.headline5,
                ),
                WidgetSpan(
                  child: Icon(
                    Icons.thumb_up_rounded,
                    size: 18,
                    color: Colors.yellow[600],
                  ),
                ),
                TextSpan(
                  text: "\n ${infoModel.category}",
                  style: Theme.of(context).textTheme.bodyText2,
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.0),
              color: Theme.of(context).primaryColor,
            ),
            width: 3,
            height: 41,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: infoModel.data1,
                  style: Theme.of(context).textTheme.headline5,
                ),
                TextSpan(
                  text: '\n ${infoModel.category1}',
                  style: Theme.of(context).textTheme.bodyText2,
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.0),
              color: Theme.of(context).primaryColor,
            ),
            width: 3,
            height: 41,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: infoModel.data2,
                  style: Theme.of(context).textTheme.headline5,
                ),
                TextSpan(
                  text: '\n ${infoModel.category2}',
                  style: Theme.of(context).textTheme.bodyText2,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
