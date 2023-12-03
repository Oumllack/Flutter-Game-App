import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/game.dart';
import 'package:flutter_application_1/pages/home/widgets/detail_sliver.dart';
import 'package:flutter_application_1/pages/home/widgets/info.dart';

class DetailPage extends StatelessWidget {
  const DetailPage(this.game, {super.key});

  final Game game;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: DetailSliverDelegate(
              game: game,
              expandedHeight: 360,
              roundedContainerHeight: 30,
            ),
          ),
          SliverToBoxAdapter(
            child: GameInfo(game),
          ),
        ],
      ),
    );
  }
}
