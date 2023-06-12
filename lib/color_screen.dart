import 'package:flutter/material.dart';

class ColorScreen extends StatefulWidget {
  const ColorScreen({super.key});

  @override
  State<ColorScreen> createState() => _ColorScreenState();
}

class _ColorScreenState extends State<ColorScreen> {
  String _text = 'James';
  Color _color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              _text,
              style: TextStyle(fontSize: 60, color: _color),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      _color = Colors.black;
                      _text = 'Black';
                    });
                  },
                  child: Text(
                    'Black',
                    style: TextStyle(
                      fontSize: 50,
                      backgroundColor: Colors.black,
                      color: Colors.white,
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      setState(() {
                        _color = Colors.green;
                        _text = 'Green';
                      });
                    },
                    child: Text(
                      'Green',
                      style: TextStyle(
                        fontSize: 50,
                        backgroundColor: Colors.green,
                        color: Colors.white,
                      ),
                    )),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      setState(() {
                        _color = Colors.red;
                        _text = 'Red';
                      });
                    },
                    child: Text(
                      'Red',
                      style: TextStyle(
                        fontSize: 50,
                        backgroundColor: Colors.red,
                        color: Colors.white,
                      ),
                    )),
                TextButton(
                    onPressed: () {
                      setState(() {
                        _color = Colors.blue;
                        _text = 'Blue';
                      });
                    },
                    child: Text(
                      'Blue',
                      style: TextStyle(
                        fontSize: 50,
                        backgroundColor: Colors.blue,
                        color: Colors.white,
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
