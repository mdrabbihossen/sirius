import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sirius/controller/voice_assitant_controller.dart';
import 'package:sirius/views/home/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => VoiceAssistantController(),
        ),
      ],
      child: MaterialApp(
        title: 'Sirius',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
