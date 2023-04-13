import 'package:flutter/material.dart';
import 'package:menu_secao/pages/widgets/section.dart';

import 'widgets/menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scrollController = ScrollController();

  final keySecao1 = GlobalKey();
  final keySecao2 = GlobalKey();
  final keySecao3 = GlobalKey();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.move_up),
          onPressed: () {
          scrollController.animateTo(
            0,
            duration: const Duration(microseconds: 500),
            curve: Curves.easeInOut,
          );
        }),
        body: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            children: [
              Menu(onMenuClick: _onMenuClink),
              Section(
                key: keySecao1,
                color: Colors.green,
                height: 1000,
              ),
              Section(
                key: keySecao2,
                color: Colors.red,
                height: 500,
              ),
              Section(
                key: keySecao3,
                color: Colors.yellow,
                height: 2000,
              ),
            ],
          ),
        ));
  }

  void _onMenuClink(int value) {
    final RenderBox renderBox;

    switch (value) {
      case 1:
        renderBox = keySecao1.currentContext!.findRenderObject() as RenderBox;
        break;
      case 2:
        renderBox = keySecao2.currentContext!.findRenderObject() as RenderBox;
        break;
      case 3:
        renderBox = keySecao3.currentContext!.findRenderObject() as RenderBox;
        break;
      default:
        throw Exception();
    }

    final offset = renderBox.localToGlobal(Offset.zero);

    scrollController.animateTo(
      offset.dy,
      duration: const Duration(microseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
