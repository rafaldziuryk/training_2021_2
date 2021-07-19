import 'package:flutter/material.dart';
import 'package:flutter_training_p2/data.dart';

abstract class Filter {
  final String id;
  dynamic params;
  bool enabled = false;

  Filter(this.id);

  void toggle() {
    enabled = !enabled;
  }

  void setParams(dynamic params) {
    this.params = params;
  }

  bool isAcceptedBy(Employee employee);
}

class GenderFilter extends Filter {

  GenderFilter(String id) : super(id);

  @override
  bool isAcceptedBy(Employee employee) {
    if (params is Gender) {
      return employee.gender == params;
    } else {
      return true;
    }
  }
}

class NameFilter extends Filter {

  NameFilter(String id) : super(id);

  @override
  bool isAcceptedBy(Employee employee) { 
    if (params is String) {
      return employee.name.contains(params) || employee.lastName.contains(params);
    } else {
      return true;
    }
  }
}

class FilterEngine {
  final Map<String, Filter> filters;
  late Function onChange;

  bool filter(Employee employee) {
    return filters.values.every((element) => !element.enabled || element.isAcceptedBy(employee));
  }

  void setParams(String id, dynamic params) {
    filters[id]?.setParams(params);
    onChange();
  }

  void toggle(String id) {
    filters[id]?.toggle();
    onChange();
  }

  FilterEngine(this.filters);
}