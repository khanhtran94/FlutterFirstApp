import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  final wordPair = new WordPair.random();

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Welcome hello flutter",
      home: new RandomWords(),
      theme: new ThemeData(primaryColor: Colors.white),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new RandomWordsState();
  }
}

class RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _biggestFont = const TextStyle(fontSize: 18.0);
  final _save = Set<WordPair>();

  Widget _buildSuggestions() {
    return new ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          if (i.isOdd) return new Divider();
          final index = i ~/ 2;
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        });
  }

  Widget _buildRow(WordPair wordPair) {
    final alreadySaved = _save.contains(wordPair);

    return new ListTile(
      title: new Text(
        wordPair.asPascalCase,
        style: _biggestFont,
      ),
      trailing: new Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.green : null,
      ),
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _save.remove(wordPair);
          } else {
            _save.add(wordPair);
          }
        });
      },
    );
  }

  void _pushSaved() {
    Navigator.of(context).push(new MaterialPageRoute(builder: (context) {
      final tiles = _save.map((e) {
        return new ListTile(
          title: new Text(
            e.asPascalCase,
            style: _biggestFont,
          ),
        );
      });
      final divided =
          ListTile.divideTiles(tiles: tiles, context: context).toList();

      return new Scaffold(
        appBar: new AppBar(
          title: new Text("Save suggestions"),
        ),
        body: new ListView(children: divided),
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Name generator"),
        actions: [
          new IconButton(icon: new Icon(Icons.list), onPressed: _pushSaved)
        ],
      ),
      body: _buildSuggestions(),
    );
  }
}
