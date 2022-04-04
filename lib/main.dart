import 'package:flutter/material.dart';
import 'package:flutter_app_template/presentation/router/app_router.dart';
import 'package:flutter_app_template/presentation/styles/themes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


import 'data/data_provider/local/cache_helper.dart';
import 'data/data_provider/remote/dio_helper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  await CacheHelper.init();


  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter=AppRouter();

   MyApp({Key? key,}) : super(key: key,);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,

      localizationsDelegates:  const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [Locale("en", ""), Locale("ar", "")],
      locale: const Locale("ar", ""),
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}

