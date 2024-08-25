import 'package:flutter/material.dart';
import '../../303/a16_1_lottie_learn.dart';
import '../../303/navigator_17_1/navigate_home_detail_view.dart';
import '../../303/navigator_17_1/navigate_home_view.dart';
import '../../main.dart';
import 'navigator_routes.dart';

// 17 video 34 dk  onGenerateRoute yapisi
mixin NavigatorCustom<T extends MyApp> on Widget {
  //! on MyApp gibi yapi ile daha safe yapabilirsin
  Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    if (routeSettings.name?.isEmpty ?? true) {
      //    return _navigateToNormal(const MobxImageUpload());
      return _navigateToNormal(const LottieLearn());
    }

    final routes = routeSettings.name == NavigatorRoures.paragfh
        ? NavigateRoutes.init
        : NavigateRoutes.values.byName(routeSettings.name!.substring(1));
    //! "/" kaldirmak icin bunu kullaniyor .replaceFirst('/', '')

    switch (routes) {
      case NavigateRoutes.init:
        return _navigateToNormal(const LottieLearn());
      case NavigateRoutes.home:
        return _navigateToNormal(const NavigateHomeView());
      case NavigateRoutes.detail:
        final id = routeSettings.arguments;
        return _navigateToNormal(
            NavigateHomeDetail(
              id: id is String ? id : null,
            ),
            isFullScreenDialog: true);
    }
  }

  Route<dynamic>? _navigateToNormal(Widget child, {bool? isFullScreenDialog}) {
    return MaterialPageRoute(
        fullscreenDialog: isFullScreenDialog ?? false,
        builder: (context) {
          return child;
        });
  }
}
