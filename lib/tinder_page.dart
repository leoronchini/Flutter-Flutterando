import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TinderPage extends StatefulWidget {
  @override
  _TinderPageState createState() => _TinderPageState();
}

class _TinderPageState extends State<TinderPage> {
  Widget _body() {
    return Column(
      children: [
        SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  child: Image.asset('assets/images/tinder.png'),
                ),
                Container(
                  height: 20,
                ),
                Container(
                  color: Colors.red,
                  child: Column(
                    children: [
                      Text("Location Changer",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white)),
                    ],
                  ),
                ),
                Container(
                  color: Colors.red,
                  child: Column(
                    children: [
                      Padding(padding: const EdgeInsets.all(15)),
                      Text(
                        "Plugin apps for Tinder",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    padding: const EdgeInsets.only(
                        left: 50, right: 50, top: 20, bottom: 20),
                    primary: Colors.white,
                  ),
                  onPressed: () {},
                  child: Container(
                    width: 150,
                    child: Text(
                      "Login with Facebook",
                      style: TextStyle(color: Colors.red),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Container(color: Colors.red),
          ),
          _body(),
        ],
      ),
    );
  }
}
