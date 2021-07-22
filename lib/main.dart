import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
  String _history = '0';
  String _expression = '1';

  Widget calcButton(
    String btntxt,
    Color btnclr,
  ) {
    return Container(
      child: SizedBox(
        height: 70,
        width: 70,
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            btntxt,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 35,
              color: btnclr,
            ),
          ),
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            padding: EdgeInsets.all(15),
            side: BorderSide(width: 2.0, color: btnclr),
            primary: Colors.blueGrey[900],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: Text('Calculator'),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text(
                  _history,
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      fontSize: 24,
                      color: Color(0xFF545F61),
                    ),
                  ),
                ),
              ),
              alignment: Alignment(1.0, 1.0),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  _expression,
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      fontSize: 48,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              alignment: Alignment(1.0, 1.0),
            ),
            SizedBox(height: 40),
            /* Row(
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
            ), */
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton(
                  'AC',
                  Colors.white,
                ),
                calcButton(
                  '+/-',
                  Colors.white,
                ),
                calcButton(
                  '%',
                  Colors.white,
                ),
                calcButton(
                  '/',
                  Colors.amber.shade700,
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
                  Colors.white,
                ),
                calcButton(
                  '8',
                  Colors.white,
                ),
                calcButton(
                  '9',
                  Colors.white,
                ),
                calcButton(
                  'x',
                  Colors.amber.shade700,
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
                  Colors.white,
                ),
                calcButton(
                  '5',
                  Colors.white,
                ),
                calcButton(
                  '6',
                  Colors.white,
                ),
                calcButton(
                  '-',
                  Colors.amber.shade700,
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
                  Colors.white,
                ),
                calcButton(
                  '2',
                  Colors.white,
                ),
                calcButton(
                  '3',
                  Colors.white,
                ),
                calcButton(
                  '+',
                  Colors.amber.shade700,
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
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    padding: EdgeInsets.fromLTRB(34, 15, 110, 15),
                    primary: Colors.blueGrey[900],
                    side: BorderSide(
                      color: Colors.white,
                      width: 2.0,
                    ),
                  ),
                ),
                calcButton(
                  '.',
                  Colors.white,
                ),
                calcButton(
                  '=',
                  Colors.amber.shade700,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
