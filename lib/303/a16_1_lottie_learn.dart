import 'package:flutter/material.dart';
import '../product/constant/duration_items.dart';
import '../product/constant/lottie_items.dart';

import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../product/global/theme_notifer.dart';
import '../product/navigator_17_1/navigator_routes.dart';

class LottieLearn extends StatefulWidget {
  const LottieLearn({super.key});

  @override
  State<LottieLearn> createState() => _LottieLearnState();
}

// https://assets3.lottiefiles.com/packages/lf20_ydo1amjm.json
class _LottieLearnState extends State<LottieLearn>
    with TickerProviderStateMixin {
  late AnimationController controller;
  bool isLight = false;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: DurationItems.durationNormal());
    navigateToHome();
  }

  Future<void> navigateToHome() async {
    await Future.delayed(const Duration(seconds: 1));
    //17_1 navigation
    Navigator.of(context).pushReplacementNamed(NavigateRoutes.home.withParaf);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
              onTap: () async {
                await controller.animateTo(isLight ? 0.5 : 1);
                // controller.animateTo(0.5);
                isLight = !isLight;
                Future.microtask(() {
                  // ekranda bir is var bittikten sonra tetiklenmesi istiyorsan kullanabilirsin
                  context.read<ThemeNotifer>().changeTheme();
                });
              },
              child: Lottie.asset(LottieItems.themeChange.lottiePath,
                  repeat: false, controller: controller))
        ],
      ),
      body: const LoadingLottie(),
    );
  }
}

class LoadingLottie extends StatelessWidget {
  const LoadingLottie({
    super.key,
  });
  final _loadingLottie =
      'https://assets2.lottiefiles.com/datafiles/bEYvzB8QfV3EM9a/data.json';

  @override
  Widget build(BuildContext context) {
    return Center(child: Lottie.network(_loadingLottie));
  }
}

class LottieSpecial {}
