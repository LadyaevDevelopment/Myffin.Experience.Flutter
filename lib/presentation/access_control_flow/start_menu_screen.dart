import 'package:flutter/material.dart';
import 'package:myffin_experience_flutter/helpers/color_resources.dart';
import 'package:myffin_experience_flutter/margins.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myffin_experience_flutter/helpers/image_resources.dart';
import 'package:myffin_experience_flutter/helpers/string_resources.dart';
import 'package:myffin_experience_flutter/styles.dart';

class StartMenuScreen extends StatelessWidget {
  const StartMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: SafeArea(
          child: LayoutBuilder(
        builder: (context, constraints) => SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Container(
              color: ColorResources.white,
              padding: const EdgeInsets.symmetric(vertical: Margins.medium, horizontal: Margins.large),
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Expanded(
                      child: SizedBox(height: Margins.medium),
                    ),
                    SvgPicture.asset(ImageResources.appLogo),
                    const Expanded(
                      child: SizedBox(height: Margins.medium),
                    ),
                    Text(
                      StringResources.startMenuPolicy,
                      style: Theme.of(context).textTheme.bodySmall,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: Margins.medium),
                    TextButton(
                      style: Styles.primaryTextButton(),
                      child: const Text(StringResources.startMenuLoginBtn),
                      onPressed: () {},
                    ),
                    const SizedBox(height: Margins.small),
                    TextButton(
                      style: Styles.secondaryTextButton(),
                      child: const Text(StringResources.startMenuRegisterBtn),
                      onPressed: () {},
                    ),
                  ],
                ),
              )),
        ),
      )),
    );
  }
}
