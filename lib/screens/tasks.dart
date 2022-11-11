import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:todolist/utility/clippers.dart';
import 'package:todolist/widgets/today_widget.dart';

class AllTasks extends StatefulWidget {
  final int screen;
  final String screencontent;
  const AllTasks(
      {super.key, required this.screen, required this.screencontent});

  @override
  State<AllTasks> createState() => _AllTasksState();
}

class _AllTasksState extends State<AllTasks> {
  var currentscreen;
  @override
  void initState() {
    super.initState();
    currentscreen = widget.screen;
  }

  List<String> screentitle = ['HOME', 'WORK', 'GYM'];

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
                  child: week(widget.screencontent)),
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
                    title: Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Text(
                        screentitle[currentscreen],
                        style: const TextStyle(
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
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 31, 31, 52),
        selectedIconTheme: const IconThemeData(color: Colors.white),
        selectedItemColor: Colors.white,
        unselectedIconTheme:
            const IconThemeData(color: Color.fromARGB(255, 93, 156, 252)),
        unselectedItemColor: const Color.fromARGB(255, 93, 156, 252),
        currentIndex: currentscreen,
        items: const [
          BottomNavigationBarItem(icon: Icon(FeatherIcons.home), label: "HOME"),
          BottomNavigationBarItem(
              icon: Icon(FeatherIcons.briefcase), label: "WORK"),
          BottomNavigationBarItem(
              icon: Icon(FeatherIcons.gitMerge), label: "GYM"),
        ],
        onTap: (value) {
          setState(() {
            currentscreen = value;
          });
        },
      ),
    );
  }
}
