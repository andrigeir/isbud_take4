import 'package:flutter/material.dart';
import 'package:customtogglebuttons/customtogglebuttons.dart';

class MyToggleButton extends StatefulWidget {
  @override
  _MyToggleButtonState createState() => _MyToggleButtonState();
}

class _MyToggleButtonState extends State<MyToggleButton> {
  List<bool> _isSelected = [false, false, false];

  List<Color> _color = [
    Colors.white.withOpacity(0.5),
    Colors.white.withOpacity(0.5),
    Colors.white.withOpacity(0.5),
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
        child: CustomToggleButtons(
            children: <Widget>[
          Container(
            width: 90,
            child: FloatingActionButton.extended(
              heroTag: null,
              onPressed: null,
              label: Text('Small'),
              backgroundColor: _color[0],
            ),
          ),
          Container(
            width: 90,
            child: FloatingActionButton.extended(
              heroTag: null,
              onPressed: null,
              label: Text('Medium'),
              backgroundColor: _color[1],
            ),
          ),
          Container(
            width: 90,
            child: FloatingActionButton.extended(
              heroTag: null,
              onPressed: null,
              label: Text('Large'),
              backgroundColor: _color[2],
            ),
          ),
        ],
            isSelected: _isSelected,
            onPressed: (int index) {
              setState(() {
                _isSelected = [false, false, false];
                _isSelected[index] = !_isSelected[index];
                _color = [
                  Colors.white.withOpacity(0.5),
                  Colors.white.withOpacity(0.5),
                  Colors.white.withOpacity(0.5)
                ];
                _color[index] = Theme.of(context).accentColor;
              });
            },
            borderColor: Theme.of(context).primaryColor,
            selectedColor: Theme.of(context).primaryColor,
            color: Theme.of(context).primaryColor,
            selectedBorderColor: Theme.of(context).primaryColor,
            spacing: 10,
            borderWidth: 0,
            elevation: 0,
            unselectedFillColor: Theme.of(context).primaryColor)

        // endregion
        );
  }
}
