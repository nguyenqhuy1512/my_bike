import 'package:flutter/material.dart';
import 'package:my_bike/screens/garages.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 60.0, 30.0, 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: Text(
                'MY BIKE',
                style: TextStyle(
                  fontFamily: 'Anton',
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                ),
              ),
            ),
            Image(
              image: AssetImage('assets/images.png'),
              fit: BoxFit.fill,
            ),
            RaisedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Garages()),
                );
              },
              color: Colors.blue[500],
              child: Text(
                'VAO NHA XE',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            RaisedButton(
              onPressed: (){},
              color: Colors.green[500],
              child: Text(
                'TIM NOI SUA XE',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            RaisedButton(
              onPressed: (){},
              color: Colors.orange[500],
              child: Text(
                'TIM XE CU/PHU TUNG/DO CHOI',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            RaisedButton(
              onPressed: (){},
              color: Colors.red[500],
              child: Text(
                'THOAT',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}
