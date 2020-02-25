import 'package:flutter/material.dart';

class StandardTextFormField extends StatelessWidget {
  final String hintText;

  StandardTextFormField({this.hintText});

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Text(
        '    |',
        style: TextStyle(
          color: Color.fromARGB(225, 255, 255, 255),
          fontSize: 40,
          fontWeight: FontWeight.w100,
        ),
      ),
      TextFormField(
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.white,
            ),
            filled: true,
            fillColor: Colors.white30,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            ),
            prefixIcon: const Icon(
              Icons.people,
              color: Colors.white,
            ),
          ),
          style: TextStyle(
            color: Colors.white,
            height: 2,
            fontSize: 15,
          )),
    ]);
  }
}

class SecuredTextFormField extends StatefulWidget {
  final String hintText;

  SecuredTextFormField({this.hintText});

  @override
  _SecuredTextFormFieldState createState() => _SecuredTextFormFieldState();
}

class _SecuredTextFormFieldState extends State<SecuredTextFormField> {
  bool isSecured = true;

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Text(
        '    |',
        style: TextStyle(
          color: Color.fromARGB(225, 255, 255, 255),
          fontSize: 40,
          fontWeight: FontWeight.w100,
        ),
      ),
      TextFormField(
        obscureText: isSecured,
        decoration: decoration,
        style: TextStyle(color: Colors.white, height: 2),
      ),
    ]);
  }

  InputDecoration get decoration {
    OutlineInputBorder outline() => OutlineInputBorder(
          borderSide: new BorderSide(color: Colors.transparent),
        );

    Icon icon() => Icon(
          isSecured == true ? Icons.visibility_off : Icons.visibility,
          size: 25.0,
          color: Colors.white,
        );

    return InputDecoration(
      hintText: widget.hintText,
      hintStyle: TextStyle(color: Colors.white),
      filled: true,
      fillColor: Colors.white30,
      enabledBorder: outline(),
      prefixIcon: const Icon(
        Icons.lock,
        color: Colors.white,
      ),
      suffixIcon: IconButton(
        onPressed: () => iconTapped,
        icon: icon(),
      ),
    );
  }

  void iconTapped() {
    setState(() {
      isSecured = !isSecured;
    });
  }
}
