import 'package:url_launcher/url_launcher.dart';

mixin LaunchMixin {
  //Mixin constractor olmayan classlar olarak düşünebilirsin
// Genelde bir method bir  işi yapacak olduğunda kullanılır
// ınstance uretemezsın
//Mixin on Widget vb. Verip kısıtlama yapabılırsın bu durumda sadece wıdget kullanılabilir

  void name(args);

  void launchURL(String url) async {
    try {
      await launchUrl(Uri.parse(url));
    } catch (e) {
      print('Failed to launch URL: $e');
    }
  }
}
