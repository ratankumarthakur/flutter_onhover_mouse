import 'package:flutter/material.dart';

class widget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mouse Hover Button Example'),
        ),
        body: Center(
          child: Column(
            children: [
              MouseColorChangeButton(),
              SizedBox(height: 100,),
              MouseColorChangeButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class MouseColorChangeButton extends StatefulWidget {
  @override
  _MouseColorChangeButtonState createState() => _MouseColorChangeButtonState();
}

class _MouseColorChangeButtonState extends State<MouseColorChangeButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: Container(height: 50,width: 200,
        child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(_isHovered ? Colors.blue : Colors.green),
            //padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(6)),
            //textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(color: Colors.white)),
          ),
          child: Text(_isHovered ? 'Mouse Over' : 'Mouse Away',style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}

