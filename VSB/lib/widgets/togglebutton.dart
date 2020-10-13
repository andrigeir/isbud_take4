import 'package:flutter/material.dart';

class MyToggleButton extends StatefulWidget {
  @override
  _MyToggleButtonState createState() => _MyToggleButtonState();
}

class _MyToggleButtonState extends State<MyToggleButton> {
  List<bool> _isSelected = [false, false, false];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ToggleButtons(
        children: <Widget>[
          Icon(Icons.bluetooth),
          Icon(Icons.wifi),
          Icon(Icons.flash_on),
        ],
        isSelected: _isSelected,
        onPressed: (int index) {
          setState(() {
            _isSelected = [false, false, false];
            _isSelected[index] = !_isSelected[index];
          });
        },
        // region example 1
        color: Colors.grey,
        selectedColor: Colors.red,
        fillColor: Colors.lightBlueAccent,
        // endregion
        // region example 2
        borderColor: Colors.lightBlueAccent,
        selectedBorderColor: Colors.red,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        // endregion
      ),
    );
  }
}
