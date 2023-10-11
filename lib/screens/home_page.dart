import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/components/category_item.dart';
import 'package:toku_app/screens/colors_page.dart';
import 'package:toku_app/screens/family_members_page.dart';
import 'package:toku_app/screens/numbers_page.dart';
import 'package:toku_app/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xffFEF6DB,
      ),
      appBar: AppBar(
        backgroundColor: const Color(
          0xff46322B,
        ),
        title: const Text('Toku'),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const NumbersPage();
              }));
            },
            text: 'Numbers',
            color: const Color(
              0xffEF9235,
            ),
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const FamilyMembersPage();
              }));
            },
            text: 'FamilyMembers',
            color: const Color(
              0xff558B37,
            ),
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ColorsPage();
              }));
            },
            text: 'Colors',
            color: const Color(
              0xff79359F,
            ),
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const PhrasesPage();
                  },
                ),
              );
            },
            text: 'Phrases',
            color: const Color(
              0xff50ADC7,
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () async {
              final player = AudioPlayer();
              await player.play(
                AssetSource(
                  "sounds/colors/black.wav",
                ),
              );
            },
            child: const Text(
              "Test",
            ),
          ),
        ],
      ),
    );
  }
}
