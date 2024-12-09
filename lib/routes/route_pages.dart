part of '../routes/routes.dart';

class RoutePageList {
  static var list = [

    GetPage(
      name: Routes.navigation,
      page: () => const NavigationScreen(),
      binding: NavigationBindings(),
    ),
    GetPage(
      name: Routes.splashScreen,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.ProductDetails,
      page: () => ProductDetailsScreen(),
      binding: ProductDetailsBindings(),
    ),
    GetPage(
      name: Routes.filterScreen,
      page: () => FilterScreen(),
      binding: FilterScreenBinding(),
    ),
    GetPage(
      name: Routes.reportScreen,
      page: () => ReportScreen(),
      binding: ReportScreenBinding(),
    ),
  ];
}
