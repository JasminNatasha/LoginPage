import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  final Function action;
  final String name;

  SubmitButton({@required this.action, @required this.name});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - (48),
      child: RaisedButton(
        padding: EdgeInsets.all(15),
        onPressed: () => action,
        child: Text(name),
        color: Colors.orange,
      ),
    );
  }
}

class Button extends StatelessWidget {
  final Function action;
  final String name;

  Button({@required this.action, @required this.name});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
              textColor: Colors.white,
              padding: EdgeInsets.all(8.0),
              onPressed: () => action,
              child: Text(
                " Enter as \n FIRST TIME USER", textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            );


  }



}



 