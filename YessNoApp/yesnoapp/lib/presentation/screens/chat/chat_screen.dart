import 'package:flutter/material.dart';
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
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return (index % 2 == 0)
                    ? const HerMessageBurble()
                    : const MyMessageBurble();
              },
            )),

            /// Caja de texto de mensaje
            const MessageFielBox(),
          ],
        ),
      ),
    );
  }
}
