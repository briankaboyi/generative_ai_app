import 'package:flutter/cupertino.dart';

class AiResponseProvider extends ChangeNotifier{
  String response= "";

  void updateResponse(String aiResponse){
    response = aiResponse;
    notifyListeners();
  }

}