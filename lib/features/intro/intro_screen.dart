import 'package:flutter/material.dart';
import 'package:tutorial/components/buttons/elevate_button.dart';
import 'package:tutorial/di.dart';
import 'package:tutorial/features/home/home_screen.dart';
import 'package:tutorial/features/intro/components/pointers_list.dart';
import 'package:tutorial/models/introduction.dart';
import 'package:tutorial/services/storage_service.dart';
import 'package:tutorial/themes/colors.dart';
import 'package:tutorial/themes/fonts.dart';
import 'package:tutorial/themes/text_styles.dart';
import 'package:tutorial/utils/keys.dart';
import 'package:tutorial/widgets/core/fading_image.dart';

class IntroScreen extends StatefulWidget {
  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  var _index = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      body: Container(
        width: size.width,
        height: size.height,
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                clipBehavior: Clip.antiAlias,
                itemCount: INTRODUCTION_LIST.length,
                physics: const NeverScrollableScrollPhysics(),
                onPageChanged: (index) => setState(() => _index = index),
                itemBuilder: _pageViewItemCard,
              ),
            ),
            const SizedBox(height: 24),
            PointersList(selectedIndex: _index, onTap: (index) => setState(() => _index = index)),
            const SizedBox(height: 24),
            RichText(
              maxLines: 1,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              text: TextSpan(
                text: 'Have an account?',
                style: TextStyles.text16_500.copyWith(color: grey2),
                children: <TextSpan>[
                  TextSpan(text: ' ', style: TextStyles.text16_600.copyWith(color: primary)),
                  TextSpan(
                    text: 'Login',
                    style: TextStyles.text16_600.copyWith(color: primary),
                    // recognizer: TapGestureRecognizer()..onTap = sl<Routes>().sign_in().push,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: ElevateButton(
                width: double.infinity,
                label: _index == 3 ? 'Get Started' : 'Next',
                onTap: () => _index == 3 ? _onGetStarted() : setState(() => _index++),
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget _pageViewItemCard(BuildContext context, int index) {
    var size = MediaQuery.of(context).size;
    var introItem = INTRODUCTION_LIST[_index];
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FadingImage(
          valueKey: _index,
          image: INTRODUCTION_LIST[_index].image,
          width: size.width * 0.75,
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(introItem.label, textAlign: TextAlign.center, style: TextStyles.text22_600.copyWith(color: dark)),
        ),
        const SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            introItem.description,
            textAlign: TextAlign.center,
            style: TextStyles.text16_500.copyWith(color: grey2, fontWeight: w400),
          ),
        ),
        const SizedBox(height: 60),
      ],
    );
  }

  void _onGetStarted() {
    sl<StorageService>().setIntro(true);
    var context = navigatorKey.currentState!.context;
    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }
}
