import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/widgets.dart';
import 'package:marvel_knowledge_compendium/core/style/core_dimensions.dart';
import 'package:marvel_knowledge_compendium/features/common/widgets/mkc_text.dart';
import 'package:marvel_knowledge_compendium/res/strings.dart' as strings;

class HomePageInfoDialog {
  static void show(BuildContext context) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.NO_HEADER,
      animType: AnimType.BOTTOMSLIDE,
      dismissOnBackKeyPress: false,
      dismissOnTouchOutside: false,
      body: Column(
        children: [
          MKCText.titleLg(strings.homePageInfoDialogTitle),
          const SizedBox(height: CoreDimensions.paddingL),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: CoreDimensions.paddingL),
            child: MKCText.body(strings.homePageInfoDialogSubtitle),
          ),
        ],
      ),
      btnOkOnPress: () {},
    )..show();
  }
}
