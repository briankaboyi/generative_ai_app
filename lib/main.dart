import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:gemini_app/providers/ai_response_provider.dart';
import 'package:gemini_app/providers/chat_provider.dart';
import 'package:gemini_app/screens/prompt_page/prompt_page.dart';
import 'package:provider/provider.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  debugPrint("dotenv from main ${dotenv.env["GENERATIVE_API_KEY"] }");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AiResponseProvider>(create: (_)=> AiResponseProvider(),),
        ChangeNotifierProvider<ChatProvider>(create: (_)=> ChatProvider())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:  PromptPage(),
      ),
    );
  }
}


