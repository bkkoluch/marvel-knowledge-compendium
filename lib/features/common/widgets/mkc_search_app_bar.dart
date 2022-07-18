import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marvel_knowledge_compendium/core/extensions/context_extensions.dart';
import 'package:marvel_knowledge_compendium/core/style/color_tokens.dart';
import 'package:marvel_knowledge_compendium/core/style/core_dimensions.dart';
import 'package:marvel_knowledge_compendium/res/clippers/wave_clipper.dart';
import 'package:marvel_knowledge_compendium/res/illustrations.dart';

class MKCSearchAppBar extends SliverPersistentHeaderDelegate {
  final ValueChanged<String>? onChanged;
  final VoidCallback onBackArrowTapped;
  final String searchAppBarText;

  const MKCSearchAppBar({
    required this.onBackArrowTapped,
    required this.searchAppBarText,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    final double adjustedShrinkOffset = shrinkOffset > minExtent ? minExtent : shrinkOffset;
    final double offset = (minExtent - adjustedShrinkOffset) * 0.5;
    final double topPadding = MediaQuery.of(context).padding.top + 16;

    return Stack(
      children: [
        const BackgroundWave(),
        Positioned(
          top: offset - CoreDimensions.paddingL - CoreDimensions.paddingS,
          child: SizedBox(
            height: 130,
            child: Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(pi),
              child: _buildAnimatedOpacity(
                shrinkOffset: shrinkOffset,
                child: SvgPicture.asset(Illustrations.chibiDeadpool),
              ),
            ),
          ),
          left: 0,
          right: context.screenWidth / 2,
        ),
        Positioned(
          top: offset + CoreDimensions.paddingL,
          child: IgnorePointer(
            ignoring: _areImageAndIconVisible(shrinkOffset),
            child: _buildAnimatedOpacity(
              shrinkOffset: shrinkOffset,
              child: GestureDetector(
                child: const Icon(Icons.arrow_back),
                onTap: onBackArrowTapped,
              ),
            ),
          ),
          left: 0,
          right: context.screenWidth - CoreDimensions.paddingXXL,
        ),
        Positioned(
          top: topPadding + offset,
          child: SearchBar(searchAppBarText: searchAppBarText, onChanged: onChanged),
          left: 16,
          right: 16,
        ),
      ],
    );
  }

  Widget _buildAnimatedOpacity({required Widget child, required double shrinkOffset}) => AnimatedOpacity(
        duration: const Duration(milliseconds: 500),
        opacity: _areImageAndIconVisible(shrinkOffset) ? 0 : 1,
        child: child,
      );

  bool _areImageAndIconVisible(double shrinkOffset) => shrinkOffset > 50;

  @override
  double get maxExtent => 280;

  @override
  double get minExtent => 140;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      oldDelegate.maxExtent != maxExtent || oldDelegate.minExtent != minExtent;
}

class BackgroundWave extends StatelessWidget {
  const BackgroundWave();

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WaveClipper(),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              ColorTokens.brandPrimaryColor.withOpacity(0.9),
              ColorTokens.brandPrimaryColor.withOpacity(0.3),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  final String searchAppBarText;
  final ValueChanged<String>? onChanged;

  const SearchBar({required this.searchAppBarText, this.onChanged, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth - CoreDimensions.paddingL - CoreDimensions.paddingS,
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          border: _border(ColorTokens.black),
          fillColor: ColorTokens.white,
          focusedBorder: _border(ColorTokens.black),
          enabledBorder: _border(ColorTokens.black),
          hintText: searchAppBarText,
          contentPadding: const EdgeInsets.symmetric(vertical: 20),
          prefixIcon: const Icon(Icons.search, color: ColorTokens.grey),
        ),
        onChanged: onChanged,
      ),
    );
  }

  OutlineInputBorder _border(Color color) => OutlineInputBorder(
        borderSide: BorderSide(width: 0.5, color: color),
        borderRadius: BorderRadius.circular(12),
      );
}
