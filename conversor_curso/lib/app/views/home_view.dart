import 'package:conversor_curso/app/components/currency_box.dart';
import 'package:conversor_curso/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  String get real => "real";

  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();

  late HomeController homeController;

  homeView() {
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: EdgeInsets.only(left: 30, right: 30, top: 100, bottom: 20),
        child: Column(
          children: [
            SizedBox(),
            Image.asset(
              'assets/logo.png',
              width: 200,
              height: 200,
            ),
            CurrencyBox(),
            SizedBox(height: 10),
            CurrencyBox(),
            SizedBox(height: 50),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(primary: Colors.amber),
                child: const Text("Converter")),
          ],
        ),
      ),
    ));
  }
}
