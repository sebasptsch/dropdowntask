import 'package:dropdowntask/resultsscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: DropDownPage(),
  ));
}

class DropDownPage extends StatefulWidget {
  @override
  _DropDownPageState createState() => _DropDownPageState();
}

List selectedCheeses = new List();

String finalCheese = "default";

class _DropDownPageState extends State<DropDownPage> {
  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem> selectedCheesesDropdown =
        new List<DropdownMenuItem>();

    for (var i = 0; i < selectedCheeses.length; i++) {
      selectedCheesesDropdown.add(new DropdownMenuItem(
          value: selectedCheeses[i],
          child: Text(selectedCheeses[i]),
          onTap: () => {
                this.setState(() {
                  finalCheese = selectedCheeses[i].toString();
                  print(finalCheese);
                })
              }));
    }
    if (!selectedCheeses.contains('default')) {
      selectedCheeses.add("default");
    }
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Look at all these neat choices'),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: <Widget>[
          Text('Cheese'),
          CheckboxListTile(
            value: selectedCheeses.contains('brie'),
            onChanged: (value) => {
              this.setState(() {
                if (value) {
                  selectedCheeses.add('brie');
                } else {
                  selectedCheeses.remove('brie');
                  finalCheese = selectedCheeses[0];
                }
                print(selectedCheeses);
              })
            },
            subtitle: Text('Brie'),
          ),
          CheckboxListTile(
            value: selectedCheeses.contains('camembert'),
            onChanged: (value) => {
              this.setState(() {
                if (value) {
                  selectedCheeses.add('camembert');
                } else {
                  selectedCheeses.remove('camembert');
                  finalCheese = selectedCheeses[0];
                }
                print(selectedCheeses);
              })
            },
            subtitle: Text('Camembert'),
          ),
          CheckboxListTile(
            value: selectedCheeses.contains('grier'),
            onChanged: (value) => {
              this.setState(() {
                if (value) {
                  selectedCheeses.add('grier');
                } else {
                  selectedCheeses.remove('grier');
                  finalCheese = selectedCheeses[0];
                }
                print(selectedCheeses);
              })
            },
            subtitle: Text('Grier'),
          ),
          CheckboxListTile(
            value: selectedCheeses.contains('parmesan'),
            onChanged: (value) => {
              this.setState(() {
                if (value) {
                  selectedCheeses.add('parmesan');
                } else {
                  selectedCheeses.remove('parmesan');
                  finalCheese = selectedCheeses[0];
                }
                print(selectedCheeses);
              })
            },
            subtitle: Text('Parmesan'),
          ),
          CheckboxListTile(
            value: selectedCheeses.contains('cheddar'),
            onChanged: (value) => {
              this.setState(() {
                if (value) {
                  selectedCheeses.add('cheddar');
                } else {
                  selectedCheeses.remove('cheddar');
                  finalCheese = selectedCheeses[0];
                }
                print(selectedCheeses);
              })
            },
            subtitle: Text('Cheddar'),
          ),
          CheckboxListTile(
            value: selectedCheeses.contains('mozzarella'),
            onChanged: (value) => {
              this.setState(() {
                if (value) {
                  selectedCheeses.add('mozzarella');
                } else {
                  selectedCheeses.remove('mozzarella');
                  finalCheese = selectedCheeses[0];
                }
                print(selectedCheeses);
              })
            },
            subtitle: Text('Mozzarella'),
          ),
          CheckboxListTile(
            value: selectedCheeses.contains('gouda'),
            onChanged: (value) => {
              this.setState(() {
                if (value) {
                  selectedCheeses.add('gouda');
                } else {
                  selectedCheeses.remove('gouda');
                  finalCheese = selectedCheeses[0];
                }
                print(selectedCheeses);
              })
            },
            subtitle: Text('Gouda'),
          ),
          DropdownButton(
            value: finalCheese,
            items: selectedCheesesDropdown,
            onChanged: (value) {
              finalCheese = value;
            },
          ),
          Center(
            child: RaisedButton(
              child: Text('Submit'),
              onPressed: () => {
                Navigator.pop(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FinalCheesePage(finalCheese)))
              },
            ),
          )
        ],
      ),
    );
  }
}
