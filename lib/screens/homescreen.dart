import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todolist/screens/tasks.dart';
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
          ),
          ClipPath(
            clipper: CustomClipPath(),
            child: Container(
              height: 550,
              width: MediaQuery.of(context).size.width,
              color: const Color.fromARGB(255, 136, 117, 255),
            ),
          ),
          ClipPath(
            clipper: CustomClipPath(),
            child: Container(
              height: 380,
              width: MediaQuery.of(context).size.width,
              color: const Color.fromARGB(255, 93, 156, 252),
            ),
          ),
          ClipPath(
            clipper: CustomClipPath(),
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: const Color.fromARGB(255, 31, 31, 52),
            ),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 31, 29, 111),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AllTasks()));
        },
        child: const Icon(FeatherIcons.plus),
      ),
    );
  }
}
