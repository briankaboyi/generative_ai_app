class ChatItem {
  final String message;
  final String reponder;
  const ChatItem({required this.message,required this.reponder});

  Map<String,dynamic> toJson() =>{
    "message": message,
    "reponder": reponder,
  };


}