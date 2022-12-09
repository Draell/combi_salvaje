import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  static const String _titulo = 'Home';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _titulo,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_titulo),
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
        ),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

    class MyStatefulWidget extends StatefulWidget {
      const MyStatefulWidget({Key? key}) : super(key: key);

      @override
      State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
    }

    class _MyStatefulWidgetState extends State<MyStatefulWidget> {
      TextEditingController nameController = TextEditingController();
      TextEditingController passwordController = TextEditingController();

      @override
      Widget build(BuildContext context) {
        return Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(0),
                    margin: const EdgeInsets.only(top: 20.0),
                    child: const Text(
                      '¡Hola!',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: 60),
                    )),

                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(0),
                    margin: const EdgeInsets.only(top: 10.0),
                    child: const Text(
                    '¿A dónde iremos hoy?',
                    style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.w800,
                    fontSize: 30),
                    )),

                Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    margin: const EdgeInsets.only(top: 20.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurple,
                      ),
                      child: const Text('Iniciar sesión',),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                      },
                    )
                ),

                Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    margin: const EdgeInsets.only(top: 20.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurple,
                      ),
                      child: const Text('Registrarme',),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                      },
                    )
                ),

                 Container(
                  child: Image.asset('lib/assets/images/conductor.PNG', height: 300, width: 300,),
                  margin: const EdgeInsets.only(top: 10.0),
                ),
              ],
            ));
      }
    }