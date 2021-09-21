import 'package:flutter/material.dart';
import 'package:hello_world/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                  currentAccountPicture: ClipOval(
                    child: Image.network(
                        'https://avatars.githubusercontent.com/u/31958861?v=4?s=400'),
                  ),
                  accountName: Text('Leo Ronchini'),
                  accountEmail: Text('leo.ronchini@hotmail.com')),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Inicio'),
                subtitle: Text('Tela de inicio'),
                onTap: () {
                  print('home');
                },
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Logout'),
                subtitle: Text('Finalizar sessão'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Tinder'),
                subtitle: Text('Desafio tela Tinder'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/tinder');
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('HomePage'),
          actions: [CustomSwitch()],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Contador: $counter'),
              Container(
                height: 10,
              ),
              CustomSwitch(),
              Container(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.black,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.black,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.black,
                  )
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              counter++;
            });
          },
        ));
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDartTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
