import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class SettingsScreen extends StatefulWidget {
  static const routeName = '/setting-screen';
  final Function setFilters;
  final Map<String, bool> currenFilters;
  SettingsScreen(
    this.setFilters,
    this.currenFilters,
  );

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _glutenFree = false;
  bool _vegetarion = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  @override
  void initState() {
    _glutenFree = widget.currenFilters['gluten']!;
    _lactoseFree = widget.currenFilters['lactose']!;
    _vegan = widget.currenFilters['vegan']!;
    _vegetarion = widget.currenFilters['vegetarian']!;
    super.initState();
  }

  Widget _buildSwitchListTile(
    String text,
    String description,
    bool currenValue,
    Function updateValue,
  ) {
    return SwitchListTile(
      title: Text(text),
      value: currenValue,
      subtitle: Text(description),
      onChanged: (value) {
        updateValue(value);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
        ),
        actions: [
          IconButton(
            onPressed: () {
              final filters = {
                'gluten': _glutenFree,
                'lactose': _lactoseFree,
                'vegan': _vegan,
                'vegetarian': _vegetarion,
              };
              widget.setFilters(filters);
            },
            icon: Icon(
              Icons.save,
            ),
          )
        ],
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(
              20.0,
            ),
            child: Text(
              'Ajust your meal selection',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildSwitchListTile(
                  'Glutten-free',
                  'Only include gluten-free meals',
                  _glutenFree,
                  (newValue) {
                    setState(
                      () {
                        _glutenFree = newValue;
                      },
                    );
                  },
                ),
                _buildSwitchListTile(
                  'Lactose-free',
                  'Only include lactose-free meals',
                  _lactoseFree,
                  (newValue) {
                    setState(
                      () {
                        _lactoseFree = newValue;
                      },
                    );
                  },
                ),
                _buildSwitchListTile(
                  'Vegetarian',
                  'Only include vegetarian meals',
                  _vegetarion,
                  (newValue) {
                    setState(
                      () {
                        _vegetarion = newValue;
                      },
                    );
                  },
                ),
                _buildSwitchListTile(
                  'Vegan',
                  'Only include vegan meals',
                  _vegan,
                  (newValue) {
                    setState(
                      () {
                        _vegan = newValue;
                      },
                    );
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
