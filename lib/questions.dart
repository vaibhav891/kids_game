import 'package:flutter/material.dart';
import 'package:kids_game/characters.dart';

class QuestionWidget extends StatefulWidget {
  const QuestionWidget({
    Key key,
  }) : super(key: key);

  @override
  _QuestionWidgetState createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  var questions = [
    ['Is your character a Male?', 'gender', 'male'],
    ['Does your character wear glasses?', 'glasses', true],
    ['Does your character have black hair?', 'hairColor', 'black'],
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(questions[index][0]),
      Row(children: [
        RaisedButton(
          onPressed: () {
            //loop through characters and remove those that do not meet criterion
            for (int i = 0; i < characters.length; i++) {
              if (characters[i][questions[index][1]] != questions[index][2]) {
                print('hellp');
                characters.removeAt(i);
              }
            }
            if (characters.length == 1) {
              print(characters[0]['name']);
              Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => FinalDialog(msgText: 'You selected ' + characters[0]['name']),));

            } else if (characters.isEmpty) {
              FinalDialog(
                  msgText:
                      'OOPS... Looks like something went wrong. I do not have a character matching those features!');
            } else {
              setState(() {
                if (index < questions.length - 1) {
                  index++;
                }
              });
            }
          },
          child: Text('Yes'),
        ),
        RaisedButton(
          onPressed: () {},
          child: Text('No'),
        )
      ]),
    ]);
  }
}

class FinalDialog extends StatelessWidget {
  final String msgText;

  const FinalDialog({Key key, this.msgText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Text(msgText),
    );
  }
}
