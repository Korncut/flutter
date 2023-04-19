import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PageConvert extends StatefulWidget {
  PageConvert({Key? key}) : super(key: key);

  @override
  _PageConvertState createState() => _PageConvertState();
}

class _PageConvertState extends State<PageConvert> {
  TextEditingController input_btc_value = TextEditingController();
  TextEditingController input_btc_amount = TextEditingController();
  double result_bth = 0.00;
  String display_result_bth = "0.00" ;

  Widget ImageLogo() {
    return Container(
      width: 100,
      height: 150,
      child: Center(
        child: Image.asset("images/logo.png"),
      ),
      margin: EdgeInsets.fromLTRB(0, 50, 0, 10),
    );
  }

  Widget AppName() {
    return Container(
      child: Center(
        child: Text(
          "เครื่องคำนวณบวก",
          style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 30,
              fontWeight: FontWeight.w900,
              color: Color.fromRGBO(30, 64, 235, 0.8)),
        ),
      ),
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
    );
  }

  Widget DevName() {
    return Container(
      child: Center(
        child: Text(
          " ",
          style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(194, 30, 235, 0.8)),
        ),
      ),
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
    );
  }

  Widget BTCValue() {
    return Container(
      child: TextFormField(
        controller: input_btc_value,
        decoration: InputDecoration(
            labelText: "กรอกจำนวน",
            hintText: "กรอกจำนวน",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
      ),
      margin: EdgeInsets.fromLTRB(50, 10, 50, 0),
    );
  }

  Widget BTCAmount() {
    return Container(
      child: TextFormField(
        controller: input_btc_amount,
        decoration: InputDecoration(
            labelText: "กรอกจำนวน",
            hintText: "กรอกจำนวน",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
      ),
      margin: EdgeInsets.fromLTRB(50, 10, 50, 0),
    );
  }

  Widget ButtonCovert() {
    return Container(
      child: Center(
        child: RaisedButton(
          color: Colors.blue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          child: Text(
            "คำนวณ",
            style: TextStyle(
                fontSize: 18, color: Color.fromRGBO(255, 255, 255, 1)),
          ),
          padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
          onPressed: () {
            setState(() {
              print("Click Me"); //คำนวณ
              print(input_btc_value.text);
              print(input_btc_amount.text);
              var btc_balance = double.parse(input_btc_value.text) +
                  double.parse(input_btc_amount.text);
              result_bth = btc_balance;
              display_result_bth =
                  NumberFormat("#,###,00.00").format(result_bth);
              print(btc_balance);
              print(result_bth);
              print(display_result_bth);
            });
          },
        ),
      ),
      margin: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
    );
  }

  Widget ResultConvert() {
    return Container(
      child: Center(
        child: Text(
          "เท่ากับ: " + result_bth.toString(),
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
        ),
      ),
      margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TOEY"),
      ),
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              ImageLogo(),
              AppName(),
              DevName(),
              BTCValue(),
              BTCAmount(),
              ButtonCovert(),
              ResultConvert(),
            ],
          ),
        ),
      ),
    );
  }
}
