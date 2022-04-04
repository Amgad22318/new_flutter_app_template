
import 'package:flutter/material.dart';

class AppRouter {
  late Widget startWidget;

  // AppRouter() {
  //   accessToken = CacheHelper.getDataFromSP(key: endpoints.SP_ACCESS_TOKEN_KEY);
  //   accountType = CacheHelper.getDataFromSP(key: endpoints.SP_ACCOUNT_TYPE_KEY);
  //   bool locationPicked = CacheHelper.getDataFromSP(
  //           key: endpoints.SP_FIRST_TIME_LOCATION_PICKED) ??
  //       false;
  //
  //   if (accessToken != null) {
  //     if (accountType == 'users') {
  //       if (locationPicked) {
  //         startWidget = const UserShopLayout();
  //       } else {
  //         startWidget = const FirstTimeLocationPicker();
  //       }
  //     } else if (accountType == 'drivers') {
  //       startWidget = const DeliveryRepresentativeShopLayout();
  //     } else if (accountType == 'providers') {
  //       startWidget = const MarketOwnerShopLayout();
  //     }
  //   } else {
  //     startWidget = const ChooseAccount();
  //   }
  // }

  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => startWidget);
      // case CHOOSE_ACCOUNT_SCREEN:
      //   return MaterialPageRoute(builder: (_) => ChooseAccount());
      // case endpoints.USER_START_SCREEN:
      //   return MaterialPageRoute(builder: (_) => const UserStartScreen());
      // case endpoints.USER_LOGIN_SCREEN:
      //   return MaterialPageRoute(builder: (_) => UserLoginScreen());


      default:
        return null;
    }
  }}

