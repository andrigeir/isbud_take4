import '../providers/bragdarefur.dart';
import 'package:flutter/material.dart';
import 'package:customtogglebuttons/customtogglebuttons.dart';
import 'package:provider/provider.dart';
import 'toggle_button_item.dart';

class NammiToggleButton extends StatefulWidget {
  @override
  _NammiToggleButtonState createState() => _NammiToggleButtonState();
}

class _NammiToggleButtonState extends State<NammiToggleButton> {
  static int i = 8;
  List<bool> _isSelected = List.generate(i, (_) => false);
  List<Color> _color = List.generate(i, (_) => Colors.white.withOpacity(0.5));
  List<String> _title = [
    "Oreo",
    "Jarðaber",
    "Mars",
    "Snickers",
    "Blaber",
    'Smarties',
    'Solvi',
    'Andri',
  ];

  void _addNammi(BuildContext context, String nammi) {
    Provider.of<Bragdarefur>(context, listen: false).addNammi(nammi);
  }

  void _removeNammi(BuildContext context, String nammi) {
    Provider.of<Bragdarefur>(context, listen: false).removeNammi(nammi);
  }

  @override
  Widget build(BuildContext context) {
    List<String> _nammi = Provider.of<Bragdarefur>(context).getNammi;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 10),
              scrollDirection: Axis.vertical,
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
                        // _isSelected = List.generate(
                        //   i,
                        //   (_) => false,
                        // );

                        // _color = List.generate(
                        //   i,
                        //   (_) => Colors.white.withOpacity(0.5),
                        // );

                        if (_isSelected.where((item) => item == true).length <
                                4 &&
                            !_isSelected[index]) {
                          _isSelected[index] = true;
                          _color[index] = Theme.of(context).accentColor;
                          _addNammi(context, _title[index]);
                        } else {
                          _isSelected[index] = false;
                          _color[index] = Colors.white.withOpacity(0.5);
                          _removeNammi(context, _title[index]);
                        }
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
    ;
  }
}
