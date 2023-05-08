import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myffin_experience_flutter/extensions/build_context.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myffin_experience_flutter/extensions/iterable.dart';
import 'package:myffin_experience_flutter/helpers/image_resources.dart';
import 'package:myffin_experience_flutter/helpers/string_resources.dart';
import 'package:myffin_experience_flutter/presentation/themes/theme.dart';
import 'package:myffin_experience_flutter/presentation/themes/theme_management.dart';
import 'package:sal/sal.dart';
import 'package:url_launcher/url_launcher.dart';

class StartMenuScreen extends StatefulWidget {
  const StartMenuScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _StartMenuScreenState();
  }
}

class _StartMenuScreenState extends State<StartMenuScreen> {
  List<PolicyDocument> documents = [];

  @override
  void initState() {
    super.initState();
    getPolicyDocuments();
  }

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
                    RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: [
                          TextSpan(
                              text: StringResources.startMenuPolicyStartText,
                              style: Theme.of(context).textTheme.bodySmall),
                          ...documents
                              .mapIndexed((item, index) => [
                                    TextSpan(
                                      text: item.title,
                                      style: context.text.externalLink,
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () async {
                                          await launchUrl(Uri.parse(item.url));
                                        },
                                    ),
                                    if (index < documents.length - 2)
                                      TextSpan(text: ", ", style: Theme.of(context).textTheme.bodySmall),
                                    if (index == documents.length - 2)
                                      TextSpan(
                                          text: " ${StringResources.and} ",
                                          style: Theme.of(context).textTheme.bodySmall),
                                    if (index == documents.length - 1)
                                      TextSpan(text: ".", style: Theme.of(context).textTheme.bodySmall),
                                  ])
                              .expand((element) => element)
                        ])),
                    const SizedBox(height: Margins.medium),
                    ElevatedButton(
                      style: primaryTextButton(),
                      child: const Text(StringResources.startMenuLoginBtn),
                      onPressed: () {
                        setDarkTheme(context);
                      },
                    ),
                    const SizedBox(height: Margins.small),
                    ElevatedButton(
                      style: secondaryTextButton(),
                      child: const Text(StringResources.startMenuRegisterBtn),
                      onPressed: () {
                        setLightTheme(context);
                      },
                    ),
                  ],
                ),
              )),
        ),
      )),
    );
  }

  void getPolicyDocuments() async {
    final result =
        await MiscApiNetworkClient(const ApiNetworkClientDefaultConfiguration("http://192.168.1.148/myffin.api/v1"))
            .getPolicyDocuments(accessToken: "");
    if (result.operationStatus == OperationStatus.success) {
      setState(() {
        documents = result.responseData!.documents;
      });
    }
  }
}
