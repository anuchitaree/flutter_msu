import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
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
                    cursorColor: Colors.cyan),
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
                    onPressed: () {},
                    child: Text('Login'),
                  ),
                  OutlinedButton(onPressed: () {}, child: Text('Register'))
                ],
              ),
              Center(child: Text('2024 \u00a9 Anuchit Aree'))
            ]),
      ),
    ));
  }
}
