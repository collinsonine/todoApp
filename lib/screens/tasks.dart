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
  var currentscreen = 0;
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: ListTile(
                      title: const Text(
                        'My List',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: CircleAvatar(
                        backgroundColor: Colors.grey[700],
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              FeatherIcons.plus,
                              color: Colors.white,
                            )),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 200,
                          height: 200,
                          margin: const EdgeInsets.only(
                              top: 10, left: 20, right: 20, bottom: 170),
                          padding: const EdgeInsets.all(20),
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 33, 30, 162),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Column(
                            children: [
                              Container(
                                clipBehavior: Clip.none,
                                alignment: Alignment.centerLeft,
                                child: const Text(
                                  "Home",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Stack(
                                alignment: AlignmentDirectional.topStart,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 50),
                                    clipBehavior: Clip.none,
                                    alignment: Alignment.centerLeft,
                                    child: const Text(
                                      "13 tasks",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                      width: 89,
                                      margin: const EdgeInsets.only(top: 40),
                                      clipBehavior: Clip.none,
                                      alignment: Alignment.centerLeft,
                                      child: LinearProgressIndicator(
                                        color: Colors.grey[600],
                                        valueColor:
                                            const AlwaysStoppedAnimation<Color>(
                                                Colors.white),
                                        value: 3,
                                      )),
                                  Container(
                                    width: 120,
                                    height: 120,
                                    margin: const EdgeInsets.only(
                                        top: 10, left: 70),
                                    clipBehavior: Clip.none,
                                    alignment: Alignment.topRight,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/home.png'))),
                                  ),
                                  Container(
                                    clipBehavior: Clip.none,
                                    alignment: Alignment.centerLeft,
                                    child: const Text(
                                      "2/13",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          margin: const EdgeInsets.only(
                              top: 10, left: 20, right: 20, bottom: 170),
                          padding: const EdgeInsets.all(20),
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 136, 117, 255),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Column(
                            children: [
                              Container(
                                clipBehavior: Clip.none,
                                alignment: Alignment.centerLeft,
                                child: const Text(
                                  "Work",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Stack(
                                alignment: AlignmentDirectional.topStart,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 50),
                                    clipBehavior: Clip.none,
                                    alignment: Alignment.centerLeft,
                                    child: const Text(
                                      "22 tasks",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                      width: 89,
                                      margin: const EdgeInsets.only(top: 40),
                                      clipBehavior: Clip.none,
                                      alignment: Alignment.centerLeft,
                                      child: LinearProgressIndicator(
                                        color: Colors.grey[600],
                                        valueColor:
                                            const AlwaysStoppedAnimation<Color>(
                                                Colors.white),
                                        value: 3,
                                      )),
                                  Container(
                                    width: 120,
                                    height: 120,
                                    margin: const EdgeInsets.only(
                                        top: 10, left: 70),
                                    clipBehavior: Clip.none,
                                    alignment: Alignment.topRight,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/work.png'))),
                                  ),
                                  Container(
                                    clipBehavior: Clip.none,
                                    alignment: Alignment.centerLeft,
                                    child: const Text(
                                      "5/22",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
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
