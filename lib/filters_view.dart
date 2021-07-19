import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'data.dart';
import 'filter.dart';

class FiltersView extends StatefulWidget {
  const FiltersView(this.filterEngine, this.nameController, {Key? key}) : super(key: key);

  final FilterEngine filterEngine;
  final TextEditingController nameController;


  @override
  _FiltersViewState createState() => _FiltersViewState();
}

class _FiltersViewState extends State<FiltersView> {

  FilterEngine get filterEngine => widget.filterEngine;
    TextEditingController get nameController => widget.nameController;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: filterEngine.filters.values.map((value) {
        if (value is GenderFilter) {
          return Row(children: [
            Checkbox(
                value: filterEngine.filters["gender"]?.enabled,
                onChanged: (_) {
                  filterEngine.toggle("gender");
                  setState(() {});
                }),
            Row(
              children: [
                Radio(
                    value: Gender.male,
                    groupValue: filterEngine.filters["gender"]?.params ?? "",
                    onChanged: (value) {
                      filterEngine.setParams("gender", value);
                      setState(() {});
                    }),
                Text("Male"),
              ],
            ),
            Row(
              children: [
                Radio(
                    value: Gender.female,
                    groupValue: filterEngine.filters["gender"]?.params ?? "",
                    onChanged: (value) {
                      filterEngine.setParams("gender", value);
                      setState(() {});
                    }),
                Text("Female"),
              ],
            ),
          ]);
        } else if (value is NameFilter) {
          return Row(children: [
            Checkbox(
                value: filterEngine.filters["name"]?.enabled,
                onChanged: (_) {
                  filterEngine.toggle("name");
                  setState(() {});
                }),
            Expanded(
                child: TextField(
              controller: nameController,
            ))
          ]);
        } else {
          return SizedBox.shrink();
        }
      }).toList(),
    );
  }
}
