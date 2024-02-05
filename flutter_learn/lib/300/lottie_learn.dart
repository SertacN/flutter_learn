import 'package:flutter/material.dart';
import 'package:flutter_learn/400/constants/app_constant.dart';
import 'package:flutter_learn/400/constants/image_constants.dart';
import 'package:flutter_learn/400/enums/image_enums.dart';
import 'package:flutter_learn/product/constants/duration_items.dart';
import 'package:flutter_learn/product/constants/lottie_items.dart';
import 'package:flutter_learn/product/global/theme_notifer.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class LottieLearn extends StatefulWidget {
  const LottieLearn({super.key});

  @override
  State<LottieLearn> createState() => _LottieLearnState();
}

class _LottieLearnState extends State<LottieLearn> with TickerProviderStateMixin {
  late AnimationController controller;
  bool isLight = false;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: DurationItems.durationNormal());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
              onTap: () {
                isLight ? controller.animateBack(1) : controller.animateTo(0.5);
                context.read<ThemeNotifier>().changeTheme();
                isLight = !isLight;
              },
              child: Lottie.asset(LottieItems.themeChanger.lottiePath, repeat: false, controller: controller))
        ],
      ),
      body: Column(
        children: [
          Center(
              child: Row(
            children: [
              Expanded(
                child: Card(
                  color: Theme.of(context).colorScheme.tertiaryContainer,
                  child: ListTile(
                    title: Text(
                      StringConstants.appTitle,
                      style: TextStyle(color: Theme.of(context).colorScheme.tertiary),
                    ),
                    subtitle: const Text(StringConstants.subTitle),
                  ),
                ),
              ),
            ],
          )),
          Image.asset(ImageEnum.collection.toPng),
          Image.asset(ImageConstants.collection)
        ],
      ),
    );
  }
}
