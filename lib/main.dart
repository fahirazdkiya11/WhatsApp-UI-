import 'package:flutter/material.dart';
import 'package:whatsapp/whatsapp_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: false,
      ),
      home: const WhatsAppPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}