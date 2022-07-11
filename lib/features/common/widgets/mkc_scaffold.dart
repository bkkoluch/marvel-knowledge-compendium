import 'package:flutter/material.dart';
import 'package:marvel_knowledge_compendium/core/style/color_tokens.dart';
import 'package:marvel_knowledge_compendium/core/style/scroll_behaviour.dart';
import 'package:marvel_knowledge_compendium/features/common/widgets/mkc_text.dart';

class MKCScaffold extends StatelessWidget {
  final String title;
  final Widget body;

  const MKCScaffold({
    required this.title,
    required this.body,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: GlowlessScrollBehaviour(),
      child: Scaffold(
        backgroundColor: ColorTokens.brandSecondaryColorDarker,
        appBar: AppBar(
          centerTitle: true,
          title: MKCText.titleMd(title, maxLines: 1),
        ),
        body: body,
      ),
    );
  }
}
