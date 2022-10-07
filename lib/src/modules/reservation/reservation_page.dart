import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import '../../shared/models/_export_models.dart';
// import '../../shared/providers/_export_providers.dart';

class ReservationPage extends StatelessWidget {
  static String routeName = "/ReservationPage";
  const ReservationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final bookModel = ModalRoute.of(context)!.settings.arguments as BookModel;
    // final reservationProvider = Provider.of<ReservationProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          padding: EdgeInsets.zero,
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () => Navigator.pop(context),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 24),
            child: Icon(Icons.edit_rounded),
          ),
        ],
      ),
      body: Column(
        children: const [],
      ),
    );
  }
}
