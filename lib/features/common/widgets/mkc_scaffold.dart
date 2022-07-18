import 'package:flutter/material.dart';
import 'package:marvel_knowledge_compendium/core/style/color_tokens.dart';
import 'package:marvel_knowledge_compendium/core/style/scroll_behaviour.dart';
import 'package:marvel_knowledge_compendium/features/common/widgets/mkc_text.dart';

class MKCScaffold extends StatelessWidget {
  final Widget body;
  final String? title;
  final Widget? titleWidget;

  const MKCScaffold({
    required this.body,
    this.title,
    this.titleWidget,
    Key? key,
  })  : assert(titleWidget != null || title != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: GlowlessScrollBehaviour(),
      child: Scaffold(
        backgroundColor: ColorTokens.brandSecondaryColorDarker,
        appBar: AppBar(
          centerTitle: true,
          title: titleWidget ?? MKCText.titleMd(title!, maxLines: 1, textAlign: TextAlign.center),
        ),
        body: body,
      ),
    );
  }
}
