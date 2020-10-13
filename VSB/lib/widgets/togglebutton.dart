import 'package:flutter/material.dart';
import 'package:customtogglebuttons/customtogglebuttons.dart';
import 'toggle_button_item.dart';

class MyToggleButton extends StatefulWidget {
  final int number;

  const MyToggleButton({Key key, this.number}) : super(key: key);

  @override
  _MyToggleButtonState createState() => _MyToggleButtonState();
}

class _MyToggleButtonState extends State<MyToggleButton> {
  static int i = 4;
  List<bool> _isSelected = List.generate(i, (_) => false);
  List<Color> _color = List.generate(i, (_) => Colors.white.withOpacity(0.5));
  List<String> _title = ["Kids", "Small", "Medium", "FuckOff"];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 75,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            children: [
              CustomToggleButtons(
                  children: <Widget>[
                    ToggleButtonItem(_title[0], _color[0]),
                    ToggleButtonItem(_title[1], _color[1]),
                    ToggleButtonItem(_title[2], _color[2]),
                    ToggleButtonItem(_title[3], _color[3]),
                  ],
                  isSelected: _isSelected,
                  onPressed: (int index) {
                    setState(() {
                      _isSelected = List.generate(
                        i,
                        (_) => false,
                      );
                      _isSelected[index] = !_isSelected[index];
                      _color = List.generate(
                        i,
                        (_) => Colors.white.withOpacity(0.5),
                      );
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
            ],
          ),
        ),
      ],
    );
  }
}
