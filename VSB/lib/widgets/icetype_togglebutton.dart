import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/bragdarefur.dart';
import 'toggle_button_item.dart';
import 'package:customtogglebuttons/customtogglebuttons.dart';

class MyIceToggleButton extends StatefulWidget {
  @override
  _MyIceToggleButtonState createState() => _MyIceToggleButtonState();
}

class _MyIceToggleButtonState extends State<MyIceToggleButton> {
  static int i = 3;
  List<bool> _isSelected = List.generate(i, (_) => false);
  List<Color> _color = List.generate(i, (_) => Colors.white.withOpacity(0.5));
  List<String> _title = ["Gamli", "Nýi", "Vegan"];
  void _setIceType(BuildContext context, int index) {
    Provider.of<Bragdarefur>(context, listen: false).setIceType(index);
  }

  @override
  Widget build(BuildContext context) {
    IceType _type = Provider.of<Bragdarefur>(context).getIceType;

    return Row(
      children: [
        Container(
          height: 75,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              children: [
                CustomToggleButtons(
                    children: <Widget>[
                      for (int a = 0; a < _color.length; a++)
                        ToggleButtonItem(_title[a], _color[a]),
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
                        _setIceType(context, index);
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
        ),
      ],
    );
  }
}
