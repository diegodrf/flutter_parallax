import 'package:flutter/material.dart';

import '../delegates/parallax_flow_delegate.dart';

class ParallaxImage extends StatelessWidget {
  final GlobalKey imageKey;
  final String imageUrl;

  const ParallaxImage({
    Key? key,
    required this.imageKey,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flow(
      delegate: ParallaxFlowDelegate(
        scrollable: Scrollable.of(context)!,
        listItemContext: context,
        backgroundImageKey: imageKey,
      ),
      children: [
        Image.network(
          imageUrl,
          key: imageKey,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
