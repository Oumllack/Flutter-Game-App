import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home/widgets/description.dart';
import 'package:flutter_application_1/pages/home/widgets/gallery.dart';
import 'package:flutter_application_1/pages/home/widgets/headerSection.dart';
import 'package:flutter_application_1/pages/home/widgets/review.dart';
import 'package:flutter_application_1/models/game.dart';

class GameInfo extends StatelessWidget {
  final Game game;

  const GameInfo(this.game, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          HeaderSection(game),
          GallerySection(game),
          DescriptionSection(game),
          ReviewSection(game)
        ],
      ),
    );
  }
}
