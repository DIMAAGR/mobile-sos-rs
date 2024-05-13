import 'package:flutter/widgets.dart';

class AtomBackgroundImage extends StatelessWidget {
  const AtomBackgroundImage({
    super.key,
    required this.path,
    this.fit,
    this.alignment = Alignment.center,
    required this.child,
  });

  final String path;
  final BoxFit? fit;
  final AlignmentGeometry alignment;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(path),
          fit: fit,
          alignment: alignment,
        ),
      ),
      child: child,
    );
  }
}
