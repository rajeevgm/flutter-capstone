import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //final List<String> items = ['Vocab', 'Homophones', 'Antonyms', 'Synonyms'];
  final List<String> items = [
    'specious',
    'ubiquitous',
    'plethora',
    'flippant',
    'redundant',
    'meticulous',
    'surreptitious',
    'deft',
    'abysmal',
    'perfunctory'
  ];
  final List<String> meanings = [
    'having a false look of truth or genuineness ', //specious
    'being or seeming to be everywhere at the same time', //ubiquitous
    'a large or excessive amount of something', //plethora
    'lacking proper respect or seriousness', //flippant
    'characterized by unnecessary repetition', //redundant
    'exact in the following of details  ', //meticulous
    'Sneaky. Secretive. Unapproved', //surreptitious
    'Neatly skillful and clean in one’s movements', //deft
    'Terrible, extremely bad, very deep', //abysmal
    'characterized by routine or superficiality; lacking in interest or enthusiasm' //perfunctory
  ];
  @override
  Widget build(BuildContext context) {
    final title = 'Weekly Vocab words';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${items[index]}'),
              // When the child is tapped, show a snackbar.
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          MyDetails(meanings[index], items[index])),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class MyDetails extends StatelessWidget {
  final String meaning;
  final String word;
  MyDetails(this.meaning, this.word);

  @override
  Widget build(BuildContext context) {
    final title = 'Meaning';

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Text(
        '$word - $meaning',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }
}
