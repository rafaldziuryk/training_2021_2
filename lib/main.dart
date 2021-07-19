import 'package:flutter/material.dart';
import 'package:flutter_training_p2/data.dart';
import 'package:flutter_training_p2/filter.dart';
import 'package:flutter_training_p2/filters_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  GlobalKey<DrawerControllerState> drawerGlobalKey = GlobalKey();
  TextEditingController nameController = TextEditingController();
  List<Employee> employees = Repository().data();

  FilterEngine filterEngine = FilterEngine(
    {
      "gender": GenderFilter("gender"),
      "name": NameFilter("name"),
    },
  );

  @override
  void initState() {
    filterEngine.onChange = () {
      setState(() {});
    };
    nameController.addListener(() {
      filterEngine.setParams("name", nameController.text);
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              AppBar(leading: ResponsiveBuilder(
                builder: (context, info) {
                  switch (info.deviceScreenType) {
                    case DeviceScreenType.mobile:
                      return IconButton(
                          onPressed: () {
                            drawerGlobalKey.currentState?.open();
                          },
                          icon: Icon(Icons.menu));
                  }
                  return SizedBox.shrink();
                },
              )),
              Expanded(
                child: Row(
                  children: [
                    ResponsiveBuilder(builder: (context, info) {
                      switch (info.deviceScreenType) {
                        case DeviceScreenType.desktop:
                        case DeviceScreenType.tablet:
                          return Material(
                            elevation: 10,
                            child: Container(
                              width: 300,
                              child: FiltersView(filterEngine, nameController),
                            ),
                          );
                      }
                      return SizedBox.shrink();
                    }),
                    Expanded(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: SingleChildScrollView(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: DataTable(
                                columns: [
                                  DataColumn(label: Text("id")),
                                  DataColumn(label: Text("name")),
                                  DataColumn(label: Text("last name")),
                                  DataColumn(label: Text("gender")),
                                  DataColumn(label: Text("age")),
                                  DataColumn(label: Text("occupation")),
                                  DataColumn(label: Text("experience")),
                                  DataColumn(label: Text("salary")),
                                ],
                                rows: employees
                                    .where((element) =>
                                        filterEngine.filter(element))
                                    .map((e) => DataRow(cells: [
                                          DataCell(Text(e.id.toString())),
                                          DataCell(Text(e.name)),
                                          DataCell(Text(e.lastName)),
                                          DataCell(Text(e.gender.toString())),
                                          DataCell(Text(e.age.toString())),
                                          DataCell(Text(e.occupation)),
                                          DataCell(
                                              Text(e.experience.toString())),
                                          DataCell(Text(e.salary.toString())),
                                        ]))
                                    .toList()),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          ResponsiveBuilder(builder: (context, info) {
            switch (info.deviceScreenType) {
              case DeviceScreenType.mobile:
                return DrawerController(
                  key: drawerGlobalKey,
                  child:
                      Drawer(child: FiltersView(filterEngine, nameController)),
                  alignment: DrawerAlignment.start,
                );
            }
            return SizedBox.shrink();
          })
        ],
      ),
    );
  }
}
