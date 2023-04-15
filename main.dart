import 'package:flutter/material.dart';

void main() {
  runApp(BasketballPointsCounter());
}

class BasketballPointsCounter extends StatefulWidget {
  @override
  _BasketballPointsCounterState createState() =>
      _BasketballPointsCounterState();
}

class _BasketballPointsCounterState extends State<BasketballPointsCounter> {
  int _homePoints = 0;
  int _awayPoints = 0;

  void _incrementHomePoints(int points) {
    setState(() {
      _homePoints += points;
    });
  }

  void _incrementAwayPoints(int points) {
    setState(() {
      _awayPoints += points;
    });
  }

  void _resetPoints() {
    setState(() {
      _homePoints = 0;
      _awayPoints = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Basketball Score Counter'),
        ),
        body: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Team A',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    '$_homePoints',
                    style: TextStyle(fontSize: 48),
                  ),
                  ElevatedButton(
                    onPressed: () => _incrementHomePoints(1),
                    child: Text('1 Point'),
                  ),
                  ElevatedButton(
                    onPressed: () => _incrementHomePoints(2),
                    child: Text('2 Points'),
                  ),
                  ElevatedButton(
                    onPressed: () => _incrementHomePoints(3),
                    child: Text('3 Points'),
                  ),
                ],
              ),
            ),
            Container(
              height: double.infinity,
              width: 1.0,
              color: Color(0xffaf4c9a),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Team B',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    '$_awayPoints',
                    style: TextStyle(fontSize: 48),
                  ),
                  ElevatedButton(
                    onPressed: () => _incrementAwayPoints(1),
                    child: Text('1 Point'),
                  ),
                  ElevatedButton(
                    onPressed: () => _incrementAwayPoints(2),
                    child: Text('2 Points'),
                  ),
                  ElevatedButton(
                    onPressed: () => _incrementAwayPoints(3),
                    child: Text('3 Points'),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: ElevatedButton(
            onPressed: () => _resetPoints(),
            child: Text('Reset Points'),
          ),
        ),
      ),
    );
  }
}
