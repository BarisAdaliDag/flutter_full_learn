import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:full_learn_flutter/101/a5_1_custom_widget_learn.dart';
import 'package:full_learn_flutter/101/a5_2_indicator_learn.dart';
import 'package:full_learn_flutter/101/a5_3_list_tile_learn.dart';
import 'package:full_learn_flutter/101/a5_4_column_row_learn.dart';
import 'package:full_learn_flutter/101/a5_5_stack_learn.dart';
import 'package:full_learn_flutter/101/a6_1_statefull_learn.dart';
import 'package:full_learn_flutter/101/a6_2_page_view_learn.dart';
import 'package:full_learn_flutter/101/a6_3_statefull_life_cycle_learn.dart';
import 'package:full_learn_flutter/101/a7_3_list_view_builder.dart';
import 'package:full_learn_flutter/101/a7_5_navigation_learn.dart';
import 'package:full_learn_flutter/101/text_learn_view.dart';
import 'package:full_learn_flutter/101/a6_4_text_field_learn.dart';
import 'package:full_learn_flutter/202/a10_1_package_learn_view.dart';
import 'package:full_learn_flutter/202/a11_2_animated_learn_view.dart';
import 'package:full_learn_flutter/202/a11_3b_oop_learn_view.dart';
import 'package:full_learn_flutter/202/a8_1_tabLearn.dart';
import 'package:full_learn_flutter/202/cache/a12_1_shared_learn_cache.dart';
import 'package:full_learn_flutter/202/theme/a10_2_light_theme.dart';
import 'package:full_learn_flutter/303/resource_model_15_1/view/req_res_view.dart';
import 'package:full_learn_flutter/404/compute/compute_learn.dart';
import 'package:full_learn_flutter/demos/a5_6_stack_demo_view.dart';
import 'package:full_learn_flutter/demos/a7_1_color_demos_view.dart';
import 'package:full_learn_flutter/demos/a7_1b_color_life_cycle.dart';
import 'package:full_learn_flutter/product/constant/project_items.dart';
import 'package:full_learn_flutter/product/navigator_17_1/navigator_custom.dart';
import 'package:provider/provider.dart';

import '202/a13_1_sheet_learn.dart';
import '202/a13_2_alert_learn.dart';
import '202/cache/a12_2b_shared_list_cache.dart';
import '202/cache/secure_context/secure_context_learn.dart';
import '303/a14_2_call_back_learn.dart';
import '303/a14_3_tabbar_advance.dart';
import '303/mobx_image_picker_17_2/view/mobx_image_upload_view.dart';
import '303/navigator_17_1/navigate_home_view.dart';
import '303/resource_model_15_1/view/a15_2b_req_res_providerView.dart';
import '404/bloc/feature/login/view/login_view.dart';
import 'demos/a7_4_my_collectıons.dart';
import 'product/global/resource_context.dart';
import 'product/global/theme_notifer.dart';
import 'product/inti/product_init.dart';
import 'product/navigator_17_1/navigator_manager.dart';

Future<void> main() async {
  final produtInit = ProductInit();
  await produtInit.init();
  runApp(
    EasyLocalization(
        supportedLocales: produtInit.localizationInit.supportedLocales,
        path: produtInit.localizationInit.localizationPath, // <-- change the path of the translation files
        child: MultiProvider(
          providers: produtInit.providers,
          builder: (context, child) => const MyApp(),
        )),
  );
}

class MyApp extends StatelessWidget with NavigatorCustom {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ProjectItems.projectName,
      debugShowCheckedModeBanner: false,

      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: context.watch<ThemeNotifer>().currentTheme, // provider ile theme degistime
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) {
            return const PackagLearnView();
          },
        );
      },
      /*
      telefon ayarlarında telefonun yazı tipini büyütme kalınlaştırma 
      durumlarında flutter bunu otomatik uygulamaya kullanıyor. 
      Bu durumları kontrol etmek için builder methodunu kullanıyoruz.
       */

      builder: (context, widget) {
        return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1)),
            child: widget ?? const SizedBox()); //Adamin telefonuna bakmazsizin yazi tipi ayarlama
      },

      // routes: NavigatorRoures().items,
      onGenerateRoute: onGenerateRoute, //! with NavigatorCustom  mixin ile kullanim kazandirdik
      navigatorKey: NavigatorManager.instance.navigatorGlobalKey,
      home: const ComputeLearnView(), //home aktif ise ongererate,navigatorKey pasif oluyor
    );
  }
}
//  theme: LighTheme().theme,



/*
parcalanmadan onceki hali 19 vid. 1.37
 Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        supportedLocales: const [Locale('en', 'US'), Locale('de', 'DE')],
        path: 'assets/translations', // <-- change the path of the translation files
        fallbackLocale: const Locale('en', 'US'),
        child: MultiProvider(
          providers: [
            ChangeNotifierProvider<ThemeNotifer>(create: (_) => ThemeNotifer()),
            Provider<ResourceContext>(create: (context) => ResourceContext()),
          ],
          builder: (context, child) => const MyApp(),
        )),
  );
}
*/