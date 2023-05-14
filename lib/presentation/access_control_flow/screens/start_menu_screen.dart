import 'package:flutter/material.dart';
import 'package:myffin_experience_flutter/domain/access_control/policy_document.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myffin_experience_flutter/extensions/build_context.dart';
import 'package:myffin_experience_flutter/generated/l10n.dart';
import 'package:myffin_experience_flutter/helpers/image_resources.dart';
import 'package:myffin_experience_flutter/presentation/access_control_flow/widgets/policy_documents_view.dart';
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
    final localizationsDelegate = S.of(context);
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
                    PolicyDocumentsView(
                      arguments: PolicyLinksViewArguments(
                          documents: documents,
                          startText: "${localizationsDelegate.startMenuPolicyStartText}\n",
                          endText: ".",
                          splitter: ", ",
                          specialLastSplitter: " ${localizationsDelegate.and} ",
                          onDocumentTapped: (document) async {
                            await launchUrl(Uri.parse(document.url));
                          }),
                      textStyle: Theme.of(context).textTheme.bodySmall,
                      linkStyle: context.text.externalLink,
                    ),
                    const SizedBox(height: Margins.medium),
                    ElevatedButton(
                      style: primaryTextButton(),
                      child: Text(localizationsDelegate.startMenuLoginBtn),
                      onPressed: () {
                        setDarkTheme(context);
                      },
                    ),
                    const SizedBox(height: Margins.small),
                    ElevatedButton(
                      style: secondaryTextButton(),
                      child: Text(localizationsDelegate.startMenuRegisterBtn),
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
        documents =
            result.responseData!.documents.map((item) => PolicyDocument(title: item.title, url: item.url)).toList();
      });
    }
  }
}
