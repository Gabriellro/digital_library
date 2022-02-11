import 'package:flutter/material.dart';

class RegisterBook extends StatelessWidget {
  static String routeName = "/RegisterBook";

  const RegisterBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _textField = TextFormField(
      keyboardType: TextInputType.text,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        hintText: "Buscar na base atual?",
        hintStyle: Theme.of(context).textTheme.subtitle1?.copyWith(
              color: Theme.of(context).highlightColor.withOpacity(0.8),
            ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: const BorderSide(
            color: Colors.black,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: const BorderSide(
            color: Colors.black,
            width: 2,
          ),
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
      toolbarHeight: 128,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        padding: EdgeInsets.zero,
        icon: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () => Navigator.pop(context),
      ),
      title: Text(
        "Adicionar livro no seu acervo",
        style: Theme.of(context).textTheme.headline6,
      ),
      bottom: PreferredSize(
        preferredSize: Size.zero,
        child: SizedBox(
          height: 56,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: _textField,
          ),
        ),
      ),
    );
    final availableheight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        appBar.preferredSize.height;
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: availableheight,
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(24),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 1.7,
                            child: _textField,
                          ),
                          const SizedBox(height: 16),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 1.7,
                            child: _textField,
                          ),
                        ],
                      ),
                      Container(
                        width: 94,
                        height: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                        child: const Icon(Icons.upload_rounded),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  _textField,
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: _textField,
                        width: MediaQuery.of(context).size.width / 2.3,
                      ),
                      SizedBox(
                        child: _textField,
                        width: MediaQuery.of(context).size.width / 2.3,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  _textField,
                  const SizedBox(height: 16),
                  _textField
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.of(context).pop(),
        label: Text(
          "Confirmar",
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
