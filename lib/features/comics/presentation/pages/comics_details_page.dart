import 'package:flutter/material.dart';
import 'package:marvel_knowledge_compendium/features/comics/domain/models/comic.dart';
import 'package:marvel_knowledge_compendium/features/common/widgets/mkc_details_scaffold.dart';

class ComicsDetailsPage extends StatelessWidget {
  final Comic comic;

  const ComicsDetailsPage({required this.comic, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MKCDetailsScaffold(
      name: comic.name!,
      description: comic.variantDescription!,
      children: [],
      thumbnail: comic.thumbnail!,
      id: comic.id!,
    );
  }
}
