import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marvel_knowledge_compendium/core/extensions/context_extensions.dart';
import 'package:marvel_knowledge_compendium/core/style/color_tokens.dart';
import 'package:marvel_knowledge_compendium/features/common/widgets/mkc_text.dart';
import 'package:marvel_knowledge_compendium/res/illustrations.dart';

class MKCEmptyListContent extends StatelessWidget {
  final String text;

  const MKCEmptyListContent({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: context.screenWidth / 2,
          height: context.screenHeight / 3,
          child: SvgPicture.asset(Illustrations.chibiIronman),
        ),
        MKCText.body(
          text,
          color: ColorTokens.white,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
