class MessageModel {
  final String message;
  final DateTime createdAt;
  final bool isUser;
 const MessageModel( {required this.createdAt,
    required this.isUser,
    required this.message,
  });
}
