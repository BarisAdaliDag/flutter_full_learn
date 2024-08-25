import '../../303/a16_1_lottie_learn.dart';
import '../../303/navigator_17_1/navigate_home_detail_view.dart';
import '../../303/navigator_17_1/navigate_home_view.dart';
// 17 video ilk route yapisi

/*
pushReplacementNamed, pushNamed
27 dk arguments = veri yollamak icinn kullanılan yapı
final _modelId = ModalRoute.of(context)?.settings.arguments; veri almak icin
ModalRoute.of(context) initstate calismaz
Future.microtask(() {. Init state çizimi bittikten sonra calisir.Initstate error çözümü icin kullanilabilir
 */
class NavigatorRoures {
  static const paragfh = "/";
  final items = {
    paragfh: (context) => const LottieLearn(),
    NavigateRoutes.home.withParaf: (context) => const NavigateHomeView(),
    NavigateRoutes.detail.withParaf: (context) => const NavigateHomeDetail(),
  };
}

enum NavigateRoutes { init, home, detail } // enum kullanalim diye yapti

extension NavigateRoutesExtension on NavigateRoutes {
  // "/","/home" oldugu icin basina ekliyoruz.
  String get withParaf => "/$name";
}
