import 'package:astrology/commons/padding.dart';
import 'package:astrology/modules/astrological_dashboard/screens/talk/colors.dart';
import 'package:astrology/modules/astrological_dashboard/screens/talk/widgets/chat_list.dart';
import 'package:astrology/modules/astrological_dashboard/screens/talk/widgets/contacts_list.dart';
import 'package:astrology/modules/astrological_dashboard/screens/talk/widgets/web_chat_appbar.dart';
import 'package:astrology/modules/astrological_dashboard/screens/talk/widgets/web_profile_bar.dart';
import 'package:astrology/modules/astrological_dashboard/screens/talk/widgets/web_search_bar.dart';
import 'package:flutter/material.dart';

class WebLayoutScreen extends StatelessWidget {
  const WebLayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        child: Row(
          children: [
            Container(
              width: 300,
              color: Colors.white,
              child: ListView(
                children: [
                  WebProfileBar(),
                  // WebSearchBar(),
                  ContactsList(),
                ],
              ),
            ),
            // const Expanded(
            //   child: SingleChildScrollView(
            //     child: Column(
            //       children: [
            //         WebProfileBar(),
            //         WebSearchBar(),

            //       ],
            //     ),
            //   ),
            // ),
            padding18,
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    left: BorderSide(color: Colors.white),
                  ),
                  // image: DecorationImage(
                  //   image: AssetImage(
                  //     "assets/images/astrology.png",
                  //   ),
                  //   fit: BoxFit.cover,
                  // ),
                ),
                child: Column(
                  children: [
                    const ChatAppBar(),
                    const SizedBox(height: 20),
                    const Expanded(
                      child: ChatList(),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.12,
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.white),
                        ),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.emoji_emotions_outlined,
                              color: Colors.grey,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.attach_file,
                              color: Colors.grey,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 15,
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.grey.shade200,
                                  hintText: 'Type a message',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    borderSide: const BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    ),
                                  ),
                                  contentPadding:
                                      const EdgeInsets.only(left: 20),
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.mic,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
