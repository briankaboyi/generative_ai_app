import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:provider/provider.dart';

class GoogleGenerativeAi {
  /**
   * EXAMPLE USAGE
   *
   * final prompt = 'Write a story about a magic backpack.';
   *
   * final content = [Content.text(prompt)];
   *
   * final response = await model.generateContent(content);
   *
   * print(response.text);
   */

  static final apiKey = dotenv.env["GENERATIVE_API_KEY"] ?? "";


  static final model = GenerativeModel(
    model: 'gemini-1.5-flash-latest',
    apiKey: apiKey,
  );

  static Future<String> generateContent(String prompt) async {
    debugPrint(" apiKey >>$apiKey");
    try {
      GenerateContentResponse response =
          await model.generateContent([Content.text(prompt)]);
      debugPrint("response>> ${response.text}");

      return response.text.toString();
    } catch (e) {
      rethrow;
    }
  }
}
