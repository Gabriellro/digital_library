import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'shared/providers/_export_providers.dart';
import 'shared/theme/theme.dart';
import 'shared/utils/app_routes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BookProvider()),
        ChangeNotifierProvider(create: (_) => ReservationProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light(),
        darkTheme: AppTheme.dark(),
        themeMode: ThemeMode.light,
        initialRoute: '/',
        routes: routes,
      ),
    );
  }
}
