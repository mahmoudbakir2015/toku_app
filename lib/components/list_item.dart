import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/item.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
    required this.item,
    required this.color,
    required this.itemType,
  }) : super(key: key);
  final Item item;

  final Color color;
  final String itemType;
  @override
  Widget build(BuildContext context) {
    return item.image == null
        ? Container(
            height: 100,
            color: color,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        item.jpName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        item.enName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                IconButton(
                  onPressed: () async {
                    try {
                      final player = AudioPlayer();
                      await player.play(
                        AssetSource("sounds/$itemType/${item.sound}"),
                      );
                    } catch (ex) {
                      print(ex);
                    }
                  },
                  icon: const Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 28,
                  ),
                )
              ],
            ),
          )
        : Container(
            height: 100,
            color: color,
            child: Row(
              children: [
                Container(
                  color: const Color(0xffFFF6DC),
                  child: Image.asset(
                    item.image!,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        item.jpName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        item.enName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                IconButton(
                  onPressed: () async {
                    try {
                      final player = AudioPlayer();
                      await player.play(
                        AssetSource("sounds/$itemType/${item.sound}"),
                      );
                    } catch (ex) {
                      print(ex);
                    }
                  },
                  icon: const Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 28,
                  ),
                )
              ],
            ),
          );
  }
}

class PhraseItem extends StatelessWidget {
  const PhraseItem({
    Key? key,
    required this.color,
    required this.itemType,
    required this.phrase,
  }) : super(key: key);

  final Item phrase;
  final Color color;
  final String itemType;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phrase.jpName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  phrase.enName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () async {
              try {
                final player = AudioPlayer();
                await player.play(
                  AssetSource("sounds/$itemType/${phrase.sound}"),
                );
              } catch (ex) {
                print(ex);
              }
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 28,
            ),
          )
        ],
      ),
    );
  }
}
