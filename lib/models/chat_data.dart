class ChatModel{
  late String name;
  late String messages;
  late String date;
  late String profile;

  ChatModel({required this.name,required this.messages, required this.date, required this.profile});
}

List<ChatModel> chatData = [
  ChatModel(name: "Tushar", messages: "Hello", date: "10:30", profile: ""),
  ChatModel(name: "ketan", messages: "hey!... how are you ?", date: "11:00", profile: ""),
  ChatModel(name: "Demo", messages: "any message", date: "11:00", profile: ""),
  ChatModel(name: "Demo 2", messages: "any message", date: "11:00", profile: ""),
  ChatModel(name: "Demo 3", messages: "any message", date: "11:00", profile: ""),
  ChatModel(name: "Demo 4", messages: "any message", date: "11:00", profile: ""),
  ChatModel(name: "Demo 5", messages: "any message", date: "11:00", profile: ""),
  ChatModel(name: "Demo 6", messages: "any message", date: "11:00", profile: ""),
  ChatModel(name: "Demo 7", messages: "any message", date: "11:00", profile: ""),
];