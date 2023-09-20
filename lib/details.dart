import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:whatsapp_share/whatsapp_share.dart';


Future<void> share() async {
  await WhatsappShare.share(
    text: 'Example share text',
    linkUrl: 'https://flutter.dev/',
    phone: '911234567890',
  );
}

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => share,
          child: const Text('Go to the Details screen'),
        ),
      ),
    );
  }
}
