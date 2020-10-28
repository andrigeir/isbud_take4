import '../providers/bragdarefur.dart';
import 'package:flutter/material.dart';
import 'package:customtogglebuttons/customtogglebuttons.dart';
import 'package:provider/provider.dart';
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
  List<String> _title = ["Kids", "Small", "Medium", "Big"];

  void _setPrice(BuildContext context, String key, List<String> nammi) {
    Provider.of<Bragdarefur>(context, listen: false).setPrice(key, nammi);
  }

  void _setSize(BuildContext context, int index) {
    Provider.of<Bragdarefur>(context, listen: false).setSize(index);
  }

  @override
  Widget build(BuildContext context) {
    double _price = Provider.of<Bragdarefur>(context).getPrice;
    IceSize _size = Provider.of<Bragdarefur>(context).getSize;
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
                      _setPrice(context, _title[index], ["b", "c", "c"]);
                      _setSize(context, index);
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
