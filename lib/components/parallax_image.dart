import 'package:cached_network_image/cached_network_image.dart';
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
        CachedNetworkImage(
          imageUrl: imageUrl,
          placeholder: (context, url) => const Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: CircularProgressIndicator(),
            ),
          ),
          errorWidget: (context, url, error) => const Icon(Icons.broken_image),
          fit: BoxFit.cover,
          key: imageKey,
        ),
      ],
    );
  }
}
