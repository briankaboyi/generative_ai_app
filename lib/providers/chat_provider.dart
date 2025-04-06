import 'package:flutter/cupertino.dart';

import '../models/chat_item.dart';

class ChatProvider extends ChangeNotifier{
  List<Map<String,dynamic>> chatHistory = [];

  void addToChat(ChatItem chatItem){
    chatHistory.add(chatItem.toJson());
    notifyListeners();
  }

}