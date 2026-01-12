import 'package:astron/core/notifiers.dart';
import 'package:astron/widget_tree.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDark, child) {
        var mode = isDark ? Brightness.dark : Brightness.light;
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Astron',
          theme: ThemeData(
            brightness: mode,
            colorScheme: .fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const WidgetTree(),
        );
      },
    );
  }
}
