import 'package:flutter/material.dart';

import '../models/_export_models.dart';

class InfoWidget extends StatelessWidget {
  final InfoModel infoModel;

  const InfoWidget({Key? key, required this.infoModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 46, bottom: 52, right: 46),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            children: [
              Row(
                children: [
                  Text(
                    infoModel.data,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  const SizedBox(width: 5),
                  Icon(
                    Icons.thumb_up_rounded,
                    size: 18,
                    color: Colors.yellow[600],
                  ),
                ],
              ),
              Text(
                infoModel.category,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.0),
              color: Theme.of(context).primaryColor,
            ),
            width: 2,
            height: 30,
          ),
          Column(
            children: [
              Text(
                infoModel.data1,
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                infoModel.category1,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.0),
              color: Theme.of(context).primaryColor,
            ),
            width: 2,
            height: 30,
          ),
          Column(
            children: [
              Text(
                infoModel.data2,
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                infoModel.category2,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
