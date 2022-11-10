import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:todolist/utility/clippers.dart';

class AllTasks extends StatefulWidget {
  const AllTasks({super.key});

  @override
  State<AllTasks> createState() => _AllTasksState();
}

class _AllTasksState extends State<AllTasks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 1000,
              color: const Color.fromARGB(255, 31, 31, 52),
            ),
            ClipPath(
              clipper: CustomClipPath(),
              child: Container(
                padding: const EdgeInsets.only(top: 150),
                alignment: Alignment.topCenter,
                height: 550,
                color: const Color.fromARGB(255, 255, 255, 255),
                child: Column(
                  children: const [
                    DefaultTabController(
                      length: 3,
                      child: TabBar(
                          labelStyle: TextStyle(fontSize: 18),
                          labelColor: Color.fromARGB(255, 63, 56, 202),
                          indicatorColor: Color.fromARGB(255, 63, 56, 202),
                          indicatorWeight: 2,
                          indicatorSize: TabBarIndicatorSize.label,
                          unselectedLabelColor: Colors.black,
                          // indicator:
                          //     ShapeDecoration(shape: Border.(width: 20)),
                          tabs: [
                            Tab(
                              text: ('Today'),
                            ),
                            Tab(
                              text: ('Tomorrow'),
                            ),
                            Tab(
                              text: ('Week'),
                            )
                          ]),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Divider(
                        indent: 2,
                        endIndent: 2,
                        thickness: 2,
                      ),
                    )
                  ],
                ),
              ),
            ),
            ClipPath(
              clipper: CustomClipPath(),
              child: Container(
                height: 150,
                color: const Color.fromARGB(255, 31, 31, 52),
                child: Padding(
                  padding: const EdgeInsets.only(top: 55),
                  child: ListTile(
                    leading: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          FeatherIcons.chevronLeft,
                          color: Colors.white,
                        )),
                    title: const Padding(
                      padding: EdgeInsets.only(left: 70),
                      child: Text(
                        'ALL TASKS',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
