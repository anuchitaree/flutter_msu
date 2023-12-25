import 'package:firstapp/pages/photo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomepageState();
  }
}

class _HomepageState extends State<Homepage> {
  String message = '';
  var _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Container(
      // color: Colors.cyan,
      child: Center(
        child: ListView(
            // mainAxisAlignment: MainAxisAlignment.center,
            shrinkWrap: true,
            children: [
              Image.asset('assets/images/logo.png', height: 200, width: 200),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                child: TextField(
                  style: Theme.of(context).textTheme.headlineMedium,
                  decoration: InputDecoration(labelText: 'Username'),
                  textAlign: TextAlign.center,
                  cursorColor: Colors.cyan,
                  controller: _usernameController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                child: TextField(
                    style: Theme.of(context).textTheme.headlineMedium,
                    decoration: InputDecoration(labelText: 'Password'),
                    textAlign: TextAlign.center,
                    obscureText: true,
                    cursorColor: Colors.cyan),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      print('This is Login button');
                      message = _usernameController.text;
                      setState(() {});

                      Navigator.pushNamed(context, '/photo-page',
                          arguments: _usernameController);
                    },
                    child: Text('Login'),
                  ),
                  OutlinedButton(
                      onPressed: () {
                        message = 'Hello';
                        setState(() {});

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Photopage(_usernameController.text)));
                      },
                      child: Text('Register'))
                ],
              ),
              Center(child: Text('2024 \u00a9 Anuchit Aree')),
              (message != null) ? Text(message) : Container(),
            ]),
      ),
    ));
  }
}
