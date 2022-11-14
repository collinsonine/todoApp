import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todolist/screens/tasks.dart';
import 'package:todolist/screens/todo.dart';
import 'package:todolist/utility/clippers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 31, 31, 52),
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: const FaIcon(FontAwesomeIcons.barsStaggered)),
      ),
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Container(
            height: 880,
            width: MediaQuery.of(context).size.width,
            color: const Color.fromARGB(255, 60, 57, 218),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 320, left: 20, right: 20),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AllTasks(
                                      screen: 0,
                                      screencontent: '13',
                                    )));
                      },
                      child: const Text(
                        'Home',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.right,
                      )),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 320, left: 20, right: 20),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AllTasks(
                                      screen: 0,
                                      screencontent: '13',
                                    )));
                      },
                      child: const Text(
                        '13',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.right,
                      )),
                )
              ],
            ),
          ),
          ClipPath(
            clipper: CustomClipPath(),
            child: Container(
              height: 550,
              width: MediaQuery.of(context).size.width,
              color: const Color.fromARGB(255, 136, 117, 255),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(top: 300, left: 20, right: 20),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const AllTasks(
                                        screen: 1,
                                        screencontent: '22',
                                      )));
                        },
                        child: const Text(
                          'Work',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.right,
                        )),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(top: 300, left: 20, right: 20),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const AllTasks(
                                        screen: 1,
                                        screencontent: '22',
                                      )));
                        },
                        child: const Text(
                          '22',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.right,
                        )),
                  )
                ],
              ),
            ),
          ),
          ClipPath(
            clipper: CustomClipPath(),
            child: Container(
              height: 380,
              width: MediaQuery.of(context).size.width,
              color: const Color.fromARGB(255, 93, 156, 252),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(top: 130, left: 20, right: 20),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const AllTasks(
                                        screen: 2,
                                        screencontent: '8',
                                      )));
                        },
                        child: const Text(
                          'Gym',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.right,
                        )),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(top: 130, left: 20, right: 20),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const AllTasks(
                                        screen: 2,
                                        screencontent: '8',
                                      )));
                        },
                        child: const Text(
                          '8',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.right,
                        )),
                  )
                ],
              ),
            ),
          ),
          ClipPath(
            clipper: CustomClipPath(),
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: const Color.fromARGB(255, 31, 31, 52),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    clipBehavior: Clip.none,
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    alignment: Alignment.bottomLeft,
                    child: const Text(
                      'Hello',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                  Container(
                    clipBehavior: Clip.none,
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 70),
                    alignment: Alignment.bottomLeft,
                    child: const Text(
                      'Daniel',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 31, 29, 111),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const TodoScreen()));
        },
        child: const Icon(FeatherIcons.plus),
      ),
    );
  }
}
