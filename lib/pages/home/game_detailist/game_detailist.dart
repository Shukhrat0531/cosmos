import 'package:cosmos/pages/home/game_detailist/game_bloc.dart';
import 'package:cosmos/widgets/game_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'game_detail_wrapper.dart';



class GameDetailist extends StatefulWidget {
  const GameDetailist({Key? key, required this.id}) : super(key: key);
  final int id;

  @override
  _GameDetailistState createState() => _GameDetailistState();
}
class _GameDetailistState extends State<GameDetailist> {
  


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/Group 79155.png",
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
        ),
        GameBlocWrapper(
          event: GameLoaded(widget.id),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              title: Text("Спорт"),
            ),
            body: BlocBuilder<GameBloc, GameState>(
              builder: (context, state) {
                print('State: $state'); 
                if (state is GameLoading) {
                  // Return a widget to show while loading.
                  return Center(child: CircularProgressIndicator());
                } else if (state is GameFailure) {
                  return Text("error");
                } else if (state is GameSecces) {
                  final games = state.games;
                   print('Games: $games');
                  return SingleChildScrollView(
                    child: Column(
                      children: games.map((game) => GameGard(game: game,)).toList(),
                    ),
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),

          ),
        ),
      ],
    );
  }
}
