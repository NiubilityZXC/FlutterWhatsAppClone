class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  // 使用必传参数，并确保所有属性不能为空
  ChatModel({
    required this.name,
    required this.message,
    required this.time,
    required this.avatarUrl,
  });
}

// 使用 const 构造并移除冗余的 `new` 关键字
List<ChatModel> dummyData = [
  ChatModel(
    name: "Pawan Kumar",
    message: "Hey Flutter, You are so amazing!",
    time: "15:30",
    avatarUrl:
        "http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb",
  ),
  ChatModel(
    name: "Harvey Spectre",
    message: "Hey I have hacked WhatsApp!",
    time: "17:30",
    avatarUrl:
        "http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb",
  ),
  ChatModel(
    name: "Mike Ross",
    message: "Wassup!",
    time: "5:00",
    avatarUrl:
        "http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb",
  ),
  ChatModel(
    name: "Rachel",
    message: "I'm good!",
    time: "10:30",
    avatarUrl:
        "http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb",
  ),
  ChatModel(
    name: "Barry Allen",
    message: "I'm the fastest man alive!",
    time: "12:30",
    avatarUrl:
        "http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb",
  ),
  ChatModel(
    name: "Joe West",
    message: "Hey Flutter, You are so cool!",
    time: "15:30",
    avatarUrl:
        "http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb",
  ),
];
