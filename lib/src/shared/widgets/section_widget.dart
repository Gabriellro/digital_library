import 'package:flutter/material.dart';

class SectionWidget extends StatelessWidget {
  final String title;
  const SectionWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          IconButton(
            icon: const Icon(Icons.arrow_forward_rounded),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
