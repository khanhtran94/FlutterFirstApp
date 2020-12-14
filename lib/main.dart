import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(new MaterialApp(
    home: new Scaffold(
      backgroundColor: Colors.orange.shade300,
      appBar: new AppBar(
        title: new Text(
          "tictac game",
          style: TextStyle(color: Colors.blueAccent),
        ),
        backgroundColor: Colors.orange.shade50,
      ),
      body: HomePage(),
    ),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<GameButton> buttonList;
  var player1;
  var player2;
  var activePlayer;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    buttonList = initGameButtons();
  }

  List<GameButton> initGameButtons() {
    player1 = List();
    player2 = List();
    activePlayer = 1;
    var gameButtons = <GameButton>[
      GameButton(id: 1),
      GameButton(id: 2),
      GameButton(id: 3),
      GameButton(id: 4),
      GameButton(id: 5),
      GameButton(id: 6),
      GameButton(id: 7),
      GameButton(id: 8),
      GameButton(id: 9),
    ];
    return gameButtons;
  }

  void playGame(GameButton gb) {
    setState(() {
      if (activePlayer == 1) {
        gb.text = "X";
        gb.bg = Colors.green;
        activePlayer = 2;
        player1.add(gb.id);
      } else {
        gb.text = "O";
        gb.bg = Colors.red;
        activePlayer = 1;
        player2.add(gb.id);
      }

      gb.enabled = false;

      int winner = checkWinner();

      if (winner == -1) {
        if (buttonList.every((element) => element.text != "")) {
          showDialog(
              context: context,
              builder: (_) => CustomDialog(
                  "Game tied!", "Press the reset button", resetGame));
        } else {
          activePlayer == 2 ? autoPlay() : null;
        }
      }
    });
  }

  void autoPlay() {
    var emptyCells = List();
    var list = List.generate(9, (index) => index + 1);
    for (var cellID in list) {
      if (!player1.contains(cellID) && !player2.contains(cellID)) {
        emptyCells.add(cellID);
      }
    }

    var r = Random();
    var randomIndex = r.nextInt(emptyCells.length - 1);
    var cellID = emptyCells[randomIndex];
    int i = buttonList.indexWhere((element) => element.id == cellID);
    playGame(buttonList[i]);
  }

  int checkWinner() {
    var winner = -1;
    if (player1.contains(1) && player1.contains(2) && player1.contains(3)) {
      winner = 1;
    }
    if (player1.contains(4) && player1.contains(5) && player1.contains(6)) {
      winner = 1;
    }
    if (player1.contains(7) && player1.contains(8) && player1.contains(9)) {
      winner = 1;
    }

    if (player2.contains(1) && player2.contains(2) && player2.contains(3)) {
      winner = 2;
    }
    if (player2.contains(4) && player2.contains(5) && player2.contains(6)) {
      winner = 1;
    }

    if (player2.contains(7) && player2.contains(8) && player2.contains(9)) {
      winner = 1;
    }

    if (winner != -1) {
      if (winner == 1) {
        showDialog(
            context: context,
            builder: (_) => CustomDialog(
                "Player 1 won the game", "Start again", resetGame));
      } else {
        if (winner == 1) {
          showDialog(
              context: context,
              builder: (_) => CustomDialog(
                  "Player 2 won the game", "Start again", resetGame));
        }
      }
    }
    return winner;
  }

  void resetGame() {
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    }
    setState(() {
      buttonList = initGameButtons();
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Tic tac toe"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: GridView.builder(
                padding: EdgeInsets.all(10),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1,
                  crossAxisSpacing: 9,
                  mainAxisSpacing: 9,
                ),
                itemCount: buttonList.length,
                itemBuilder: (context, i) => SizedBox(
                      width: 100,
                      height: 100,
                      child: RaisedButton(
                        padding: EdgeInsets.all(8),
                        onPressed: buttonList[i].enabled
                            ? () => playGame(buttonList[i])
                            : null,
                        child: Text(buttonList[i].text,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            )),
                        color: buttonList[i].bg,
                        disabledColor: buttonList[i].bg,
                      ),
                    )),
          ),
          RaisedButton(
            color: Colors.red,
            child: Text(
              "Reset",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            padding: EdgeInsets.all(20),
            onPressed: resetGame,
          )
        ],
      ),
    );
  }
}

class GameButton {
  final id;
  String text;
  Color bg;
  bool enabled;
  GameButton({
    this.id,
    this.text = "",
    this.bg = Colors.grey,
    this.enabled = true,
  });
}

class CustomDialog extends StatelessWidget {
  final title;
  final content;
  final VoidCallback callback;
  final actionText;

  CustomDialog(this.title, this.content, this.callback,
      [this.actionText = "Reset"]);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        FlatButton(
          onPressed: callback,
          child: Text(actionText),
          color: Colors.red,
        )
      ],
    );
  }
}
