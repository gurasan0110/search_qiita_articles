import 'package:flutter/widgets.dart';
import 'package:search_qiita_articles/presentation/widgets/tag_chips/tag_chip.dart';

class TagChips extends StatelessWidget {
  const TagChips(this.tags, {super.key});

  final List<String> tags;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 4,
      runSpacing: 4,
      children: tags.map((tag) => TagChip(tag)).toList(),
    );
  }
}
