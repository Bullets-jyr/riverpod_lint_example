import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'pages/avoid_man_as_gen_dependecy.dart';
import 'pages/avoid_public_notifier_properties.dart';
import 'pages/provider_parameters.dart';
import 'widgets/custom_button.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Riverpod Lint',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 24),
          labelLarge: TextStyle(fontSize: 24),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          shrinkWrap: true,
          children: const [
            CustomButton(
              title: 'Provider Parameters',
              child: ProviderParameters(),
            ),
            CustomButton(
              title: 'Avoid Public Notifier Properties',
              child: AvoidPublicNotifierProperties(),
            ),
            CustomButton(
              title: 'Avoid Manual Providers as Gnerated Provider Dependency',
              child: AvoidManAsGenDependency(),
            ),
          ],
        ),
      ),
    );
  }
}
