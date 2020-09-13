import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters-screen';
  final Function saveFilters;
  final Map<String, bool> currentFilter;

  FiltersScreen(this.saveFilters, this.currentFilter);
  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _filter1 = false;
  bool _filter2 = false;
  bool _filter3 = false;

  @override
  initState() {
    _filter1 = widget.currentFilter['filter1'];
    _filter2 = widget.currentFilter['filter2'];
    _filter3 = widget.currentFilter['filter3'];
    super.initState();
  }

  Widget buildSwitchListTile(String title, String description,
      bool currentValue, Function updateValue) {
    return SwitchListTile(
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      value: currentValue,
      subtitle: Text(description),
      onChanged: updateValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filters'),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.save,
              ),
              onPressed: () {
                final selectedFilters = {
                  'filter1': _filter1,
                  'filter2': _filter2,
                };
                widget.saveFilters(selectedFilters);
              }),
        ],
      ),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust your search selections',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                buildSwitchListTile(
                  'Walkable',
                  'Distance less than 2 kms.',
                  _filter1,
                  (newValue) {
                    setState(() {
                      _filter1 = newValue;
                    });
                  },
                ),
                buildSwitchListTile(
                  'Might req a vehicle',
                  'Place in a radius of 5km.',
                  _filter2,
                  (newValue) {
                    setState(() {
                      _filter2 = newValue;
                    });
                  },
                ),
                buildSwitchListTile(
                  'Day out',
                  'Somewhere which is more than 7km.',
                  _filter3,
                  (newValue) {
                    setState(() {
                      _filter3 = newValue;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
