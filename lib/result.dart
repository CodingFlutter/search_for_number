import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resetHandler, this.resultScore);

  String get resultPhrase {
    String resultText = '';
    if (resultScore == 269) {
      resultText = 'You are awesome!';
    } else if (resultScore < 269) {
      resultText = 'Try one more time!';
    } else if (resultScore > 269) {
      resultText = 'Try one more time!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    var assetImage = const AssetImage('assets/images/image5.png');
    var image = Image(
      image: assetImage,
      width: 200.0,
      height: 200.0,
    );
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            margin:
                const EdgeInsets.only(left: 10, top: 40, right: 10, bottom: 5),
            child: image,
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: FlatButton(
              textColor: Colors.white,
              onPressed: resetHandler,
              child: Text(
                resultPhrase,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: FlatButton(
              textColor: Colors.white,
              onPressed: resetHandler,
              child: const Text(
                'Restart Quiz!',
                style: TextStyle(fontSize: 28),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
