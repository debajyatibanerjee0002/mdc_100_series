// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  void clearText() {
    _passwordController.clear();
    _usernameController.clear();
  }

  // TODO: Add text editing controllers (101)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/diamond.png'),
                SizedBox(height: 16.0),
                Text('SHRINE'),
              ],
            ),
            SizedBox(height: 120.0),
            // TODO: Wrap Username with AccentColorOverride (103)
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                fillColor: Colors.green[50],
                prefixIcon: Icon(Icons.mail_outline),
                filled: true,
                alignLabelWithHint: true,
                hintText: 'Enter email id',
                labelText: 'Email Id',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // TODO: Remove filled: true values (103)
            // TODO: Wrap Password with AccentColorOverride (103)
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                fillColor: Colors.green[50],
                prefixIcon: Icon(Icons.vpn_key),
                filled: true,
                alignLabelWithHint: true,
                hintText: 'Enter Password',
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // TODO: Add TextField widgets (101)
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MaterialButton(
                  onPressed: () {
                    clearText();
                  },
                  child: Text('cancel'),
                ),
                MaterialButton(
                  elevation: 4,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Next',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.green[800],
                ),
              ],
            ),
            // TODO: Add button bar (101)
          ],
        ),
      ),
    );
  }
}

// TODO: Add AccentColorOverride (103)
