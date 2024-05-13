import 'package:flutter/material.dart';

class AtomLogoImage extends StatelessWidget {
  final String asset;

  const AtomLogoImage({
    super.key,
    required this.asset,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      asset,
    );
  }
}
