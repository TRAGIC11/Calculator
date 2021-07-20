import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget calcButton(String btntxt, Color btnclr, Color txtclr) {
    return Container(
      child: SizedBox(
        height: 80,
        width: 80,
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            btntxt,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 35,
              color: txtclr,
            ),
          ),
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            padding: EdgeInsets.all(20),
            primary: btnclr,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Calculator'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    '0',
                    style: TextStyle(color: Colors.white, fontSize: 100),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton(
                  'AC',
                  Colors.grey,
                  Colors.black,
                ),
                calcButton(
                  '+/-',
                  Colors.grey,
                  Colors.black,
                ),
                calcButton(
                  '%',
                  Colors.grey,
                  Colors.black,
                ),
                calcButton(
                  '/',
                  Colors.amber.shade700,
                  Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton(
                  '7',
                  Colors.grey.shade800,
                  Colors.white,
                ),
                calcButton(
                  '8',
                  Colors.grey.shade800,
                  Colors.white,
                ),
                calcButton(
                  '9',
                  Colors.grey.shade800,
                  Colors.white,
                ),
                calcButton(
                  'x',
                  Colors.amber.shade700,
                  Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton(
                  '4',
                  Colors.grey.shade800,
                  Colors.white,
                ),
                calcButton(
                  '5',
                  Colors.grey.shade800,
                  Colors.white,
                ),
                calcButton(
                  '6',
                  Colors.grey.shade800,
                  Colors.white,
                ),
                calcButton(
                  '-',
                  Colors.amber.shade700,
                  Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton(
                  '1',
                  Colors.grey.shade800,
                  Colors.white,
                ),
                calcButton(
                  '2',
                  Colors.grey.shade800,
                  Colors.white,
                ),
                calcButton(
                  '3',
                  Colors.grey.shade800,
                  Colors.white,
                ),
                calcButton(
                  '+',
                  Colors.amber.shade700,
                  Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    '0',
                    style: TextStyle(
                      fontSize: 35,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    padding: EdgeInsets.fromLTRB(34, 20, 118, 20),
                    primary: Colors.grey.shade800,
                  ),
                ),
                calcButton(
                  '.',
                  Colors.grey.shade800,
                  Colors.white,
                ),
                calcButton(
                  '=',
                  Colors.amber.shade700,
                  Colors.white,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
