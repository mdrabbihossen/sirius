import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sirius/controller/voice_assitant_controller.dart';
import 'package:sirius/utils/colors.dart';
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
        debugShowCheckedModeBanner: false,
        title: 'Sirius',
        theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: AppColors.whiteColor,
          textTheme: TextTheme(
            bodyLarge: GoogleFonts.prompt(),
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: AppColors.whiteColor,
          ),
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
