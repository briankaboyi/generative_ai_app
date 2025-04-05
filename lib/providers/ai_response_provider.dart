import 'package:flutter/cupertino.dart';
import 'package:gemini_app/ai/google_generative_ai.dart';

class AiResponseProvider extends ChangeNotifier{
  String response= "";

  void updateResponse(String aiResponse){
    response = aiResponse;
    notifyListeners();
  }

  void ask(String prompt) async{
   String aiResponse = await GoogleGenerativeAi.generateContent(prompt);
   debugPrint("aiResponse $aiResponse");
   updateResponse(aiResponse);
   debugPrint("aiResponse $aiResponse");
  }

}