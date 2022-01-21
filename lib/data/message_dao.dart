import 'package:firebase_database/firebase_database.dart';
import 'package:raychat/data/message.dart';

class MessageDao {
  final DatabaseReference _messageRef =
      FirebaseDatabase.instance.reference().child("message");

  void saveMessage(Message msg) {
    _messageRef.push().set(msg.toJson());
  }

  Query getMessageQuery() {
    return _messageRef;
  }
}
