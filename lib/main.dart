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
  //Calculator({Key key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var firstNum;
  var secondNum;
  String history = '';
  String textToDisplay = '';
  String res = '';
  String operation = '';

  void btnOnClick(String btnVal) {
    print(btnVal);
    if (btnVal == 'C') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '0';
    } else if (btnVal == 'AC') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '0';
      history = '';
    } else if (btnVal == '+' ||
        btnVal == '-' ||
        btnVal == 'x' ||
        btnVal == '/' ||
        btnVal == '%') {
      if (textToDisplay.contains('.')) {
        firstNum = double.parse(
          '$textToDisplay',
        );
      } else {
        firstNum = int.parse(
          '$textToDisplay',
        );
      }
      res = '';
      operation = btnVal;
    } else if (btnVal == '=') {
      if (textToDisplay.contains('.')) {
        secondNum = double.parse(
          '$textToDisplay',
        );
      } else {
        secondNum = int.parse(
          '$textToDisplay',
        );
      }

      if (operation == '+') {
        res = (firstNum + secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '-') {
        res = (firstNum - secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '/') {
        res = (firstNum / secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == 'x') {
        res = (firstNum * secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '%') {
        res = (firstNum % secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else {
      if (textToDisplay.contains('.')) {
        res = double.parse(textToDisplay + btnVal).toString();
      } else {
        res = int.parse(textToDisplay + btnVal).toString();
      }
    }
    setState(() {
      textToDisplay = res;
    });
  }

  Widget calcButton(
    String btntxt,
    Color btnclr,
    Function callBack,
  ) {
    return Container(
      child: SizedBox(
        height: 70,
        width: 70,
        child: ElevatedButton(
          onPressed: () => callBack(btntxt),
          child: Text(
            btntxt,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
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
                  history,
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
                  textToDisplay,
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
                  btnOnClick,
                ),
                calcButton(
                  'C',
                  Colors.white,
                  btnOnClick,
                ),
                calcButton(
                  '%',
                  Colors.white,
                  btnOnClick,
                ),
                calcButton(
                  '/',
                  Colors.amber.shade700,
                  btnOnClick,
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
                  btnOnClick,
                ),
                calcButton(
                  '8',
                  Colors.white,
                  btnOnClick,
                ),
                calcButton(
                  '9',
                  Colors.white,
                  btnOnClick,
                ),
                calcButton(
                  'x',
                  Colors.amber.shade700,
                  btnOnClick,
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
                  btnOnClick,
                ),
                calcButton(
                  '5',
                  Colors.white,
                  btnOnClick,
                ),
                calcButton(
                  '6',
                  Colors.white,
                  btnOnClick,
                ),
                calcButton(
                  '-',
                  Colors.amber.shade700,
                  btnOnClick,
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
                  btnOnClick,
                ),
                calcButton(
                  '2',
                  Colors.white,
                  btnOnClick,
                ),
                calcButton(
                  '3',
                  Colors.white,
                  btnOnClick,
                ),
                calcButton(
                  '+',
                  Colors.amber.shade700,
                  btnOnClick,
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
                  onPressed: () => btnOnClick('0'),
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
                  btnOnClick,
                ),
                calcButton(
                  '=',
                  Colors.amber.shade700,
                  btnOnClick,
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
