import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myffin_experience_flutter/extensions/build_context.dart';
import 'package:myffin_experience_flutter/generated/l10n.dart';
import 'package:myffin_experience_flutter/helpers/image_resources.dart';
import 'package:myffin_experience_flutter/presentation/access_control_flow/start_menu_screen/bloc/start_menu_bloc.dart';
import 'package:myffin_experience_flutter/presentation/access_control_flow/widgets/policy_documents_view.dart';
import 'package:myffin_experience_flutter/presentation/themes/theme.dart';
import 'package:myffin_experience_flutter/presentation/themes/theme_management.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StartMenuScreen extends StatefulWidget {
  const StartMenuScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _StartMenuScreenState();
  }
}

class _StartMenuScreenState extends State<StartMenuScreen> {
  @override
  Widget build(BuildContext context) {
    final strings = S.of(context);
    return BlocProvider(
        create: (_) => StartMenuBloc(),
        child: Scaffold(
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
                        BlocBuilder<StartMenuBloc, StartMenuState>(
                          builder: (context, state) {
                            if (state is StartMenuInitial) {
                              context.read<StartMenuBloc>().add(StartMenuGetPolicyDocuments());
                            }
                            if (state is StartMenuProgress) {
                              return const Center(child: CircularProgressIndicator());
                            }
                            if (state is StartMenuDocuments) {
                              return PolicyDocumentsView(
                                arguments: PolicyLinksViewArguments(
                                    documents: state.documents,
                                    startText: "${strings.startMenuPolicyStartText}\n",
                                    endText: ".",
                                    splitter: ", ",
                                    specialLastSplitter: " ${strings.and} ",
                                    onDocumentTapped: (document) async {
                                      await launchUrl(Uri.parse(document.url));
                                    }),
                                textStyle: Theme.of(context).textTheme.bodySmall,
                                linkStyle: context.text.externalLink,
                              );
                            }
                            if (state is StartMenuError) {
                              return Text(strings.startMenuPolicyDocumentsError,
                                  textAlign: TextAlign.center, style: createErrorLabelStyle());
                            }
                            return const Spacer();
                          },
                        ),
                        const SizedBox(height: Margins.medium),
                        ElevatedButton(
                          style: primaryTextButton(),
                          child: Text(strings.startMenuLoginBtn),
                          onPressed: () {
                            setSystemTheme(context);
                            //setDarkTheme(context);
                          },
                        ),
                        const SizedBox(height: Margins.small),
                        ElevatedButton(
                          style: secondaryTextButton(),
                          child: Text(strings.startMenuRegisterBtn),
                          onPressed: () {
                            setLightTheme(context);
                          },
                        ),
                      ],
                    ),
                  )),
            ),
          )),
        ));
  }
}
