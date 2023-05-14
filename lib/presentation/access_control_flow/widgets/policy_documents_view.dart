import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:myffin_experience_flutter/domain/entities/access_control/policy_document.dart';
import 'package:myffin_experience_flutter/extensions/iterable.dart';

class PolicyDocumentsView extends StatelessWidget {
  const PolicyDocumentsView({super.key, required this.arguments, this.textStyle, this.linkStyle});

  final PolicyLinksViewArguments arguments;
  final TextStyle? textStyle;
  final TextStyle? linkStyle;

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(text: arguments.startText, style: textStyle),
          ...arguments.documents
              .mapIndexed((item, index) => [
                    TextSpan(
                      text: item.title,
                      style: linkStyle,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          arguments.onDocumentTapped(item);
                        },
                    ),
                    if (index < arguments.documents.length - 2) TextSpan(text: arguments.splitter, style: textStyle),
                    if (index == arguments.documents.length - 2)
                      TextSpan(text: arguments.specialLastSplitter, style: textStyle),
                    if (index == arguments.documents.length - 1) TextSpan(text: arguments.endText, style: textStyle),
                  ])
              .expand((element) => element)
        ]));
  }
}

class PolicyLinksViewArguments {
  final List<PolicyDocument> documents;
  final String startText;
  final String endText;
  final String splitter;
  final String? specialLastSplitter;
  final void Function(PolicyDocument document) onDocumentTapped;

  const PolicyLinksViewArguments(
      {required this.documents,
      required this.startText,
      required this.endText,
      required this.splitter,
      required this.specialLastSplitter,
      required this.onDocumentTapped});
}
