import 'package:nfcpay_structure/initializer.dart';
import 'base/utils/basic_import.dart';

void main() async {
  AppInitializer.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      ensureScreenSize: true,
      designSize: const Size(375, 812),
      builder: (_, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.navigation,
        title: Strings.appName,
        theme: Themes.light,
        darkTheme: Themes.dark,
        getPages: Routes.list,
        themeMode: ThemeMode.light,

        // initialBinding: BindingsBuilder(
        //       () async {
        //     Get.put(SystemMaintenanceController());
        //     await DynamicLanguage.init(url: ApiConfig.languageUrl);
        //     Get.lazyPut(() => NavigationController());
        //   },
        // ),
        // builder: (context, widget) {
        //   ScreenUtil.init(context);
        //   return Obx(
        //         () =>
        //         MediaQuery(
        //           data: MediaQuery.of(context)
        //               .copyWith(textScaler: TextScaler.linear(1.0)),
        //           child: Directionality(
        //             textDirection: DynamicLanguage.isLoading
        //                 ? TextDirection.ltr
        //                 : DynamicLanguage.languageDirection,
        //             child: widget!,
        //           ),
        //         ),
        //   );
        // },


      ),
    );
  }
}
