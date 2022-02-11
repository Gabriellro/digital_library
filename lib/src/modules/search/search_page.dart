import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  static String routeName = "/SearchPage";

  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _textField = TextFormField(
      keyboardType: TextInputType.text,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        hintText: "O que você quer ler?",
        hintStyle: Theme.of(context).textTheme.subtitle1?.copyWith(
              color: Theme.of(context).highlightColor.withOpacity(0.9),
            ),
        isDense: true,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: const BorderSide(color: Colors.black),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: const BorderSide(color: Colors.black),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: const BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: const BorderSide(color: Colors.red),
        ),
      ),
    );
    final appBar = AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        padding: EdgeInsets.zero,
        icon: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () => Navigator.pop(context),
      ),
      title: _textField,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: IconButton(
            icon: const Icon(Icons.qr_code_rounded),
            onPressed: () {},
          ),
        ),
      ],
    );
    return Scaffold(
      appBar: appBar,
    );
  }
}
