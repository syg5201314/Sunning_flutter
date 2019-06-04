import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomWordsState extends State<RandomWords> {
  final List<WordPair> _sufggestions = <WordPair>[];
  final TextStyle _bigggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    // final WordPair randomWords = new WordPair.random();
    // return new Text(randomWords.asPascalCase);
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Startup Name Generator'),
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildRow(WordPair pair){
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _bigggerFont,
      ),
    );
  }

  Widget _buildSuggestions() {
    return new ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (BuildContext _context, int i) {
          if(i.isOdd){
            return const Divider();
          }
          final int index = i ~/ 2;
          if(index >= _sufggestions.length){
            _sufggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_sufggestions[index]);
        });
  }
}

class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new RandomWordsState();
  }
}
