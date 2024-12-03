import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SplashImage extends StatelessWidget {
  const SplashImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CachedNetworkImage(
        imageUrl: 'https://play-lh.googleusercontent.com/ptqGk94CN-4x55bFhb9mj7bhxi6xdCicWcYMSIFHA6Rsy1ONl7B5QnMkpEyN7Frj8Q',
        placeholder: (context, url) => const Text(''),
        errorWidget: (context, url, error) => const Text(''),
        fit: BoxFit.cover,
      ),
    );
  }
}
