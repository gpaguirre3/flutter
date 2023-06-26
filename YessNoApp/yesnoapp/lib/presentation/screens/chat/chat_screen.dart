// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yesnoapp/domain/entities/message.dart';
import 'package:yesnoapp/presentation/providers/chat_provide.dart';
import 'package:yesnoapp/presentation/widget/chat/her_message_bubblu.dart';
import 'package:yesnoapp/presentation/widget/chat/my_message_bubble.dart';
import 'package:yesnoapp/presentation/widget/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://animecorner.me/wp-content/uploads/2022/09/eminnce.png'),
          ),
        ),
        title: const Text('SHADOW'),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: chatProvider.messageList.length,
              itemBuilder: (context, index) {
                final message = chatProvider.messageList[index];
                return (message.fromWho == FromWho.hers)
                    ? const HerMessageBurble()
                    : MyMessageBurble(message: message);
              },
            )),

            /// Caja de texto de mensaje
             MessageFielBox(
              onValue: (value) => chatProvider.sendMessage(value),
             ),
          ],
        ),
      ),
    );
  }
}
