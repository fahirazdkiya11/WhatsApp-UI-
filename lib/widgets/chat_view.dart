import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat.dart';
import 'package:whatsapp/tema.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: chatList.length,
        itemBuilder: (context, index) {
          final chat = chatList[index];
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Row(children: [
              // Gambar
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  chat.image,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            chat.name,
                            style: customTextStyle,
                          ),
                          Text(chat.messageDate),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        chat.messageIsi,
                        style: const TextStyle(
                          color: Colors.black38,
                          fontSize: 16,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          );
        });
  }
}
