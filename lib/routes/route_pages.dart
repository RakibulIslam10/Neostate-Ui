part of '../routes/routes.dart';

class RoutePageList {
  static var list = [
    GetPage(
      name: Routes.voucher_codeScreen,
      page: () => const VoucherCodeScreen(),
      binding: VoucherCodeBinding(),
    ),
    
    GetPage(
      name: Routes.edit_profileScreen,
      page: () => const EditProfileScreen(),
      binding: EditProfileBinding(),
    ),
    
    GetPage(
      name: Routes.settingScreen,
      page: () => const SettingScreen(),
      binding: SettingBinding(),
    ),
    
    GetPage(
      name: Routes.bookmarkScreen,
      page: () => const BookmarkScreen(),
      binding: BookmarkBinding(),
    ),
    
    GetPage(
      name: Routes.testScreen,
      page: () => const TestScreen(),
      binding: TestBinding(),
    ),
    

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
