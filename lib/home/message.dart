import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template_project/provider/messagesprov.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
Widget build(BuildContext context) {
    final messageProvider = Provider.of<MessageProviders>(context);
    messageProvider.fetchMessages();
 

    return Scaffold(
      appBar: AppBar(title: Text("Messages")),
      body: ListView.builder(
        itemCount: messageProvider.messages.length,
        itemBuilder: (context, index) {
          final message = messageProvider.messages[index];
          return ListTile(
            title: Text(message.name),
            subtitle: Text(message.message),
            trailing: Text(message.email),
          );
        },
      ),
    );
  }
}