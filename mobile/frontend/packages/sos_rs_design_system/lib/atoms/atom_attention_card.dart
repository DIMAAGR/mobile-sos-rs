import 'package:flutter/material.dart';
import 'package:sos_rs_design_system/sos_rs_design_system.dart';
import 'package:sos_rs_design_system/themes_and_styles/text_theme.dart';

class AtomAttentionCard extends StatelessWidget {
  final String content;
  const AtomAttentionCard(this.content, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: AtomColors.attentionCardBorderColor, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.info_outline,
            size: 24,
            color: AtomColors.attentionCardIconColor,
          ),
          const SizedBox(width: 16),
          Flexible(
            child: Text(
              content,
              maxLines: 4,
              style: AppTextStyle.attentionCard,
            ),
          ),
        ],
      ),
    );
  }
}
