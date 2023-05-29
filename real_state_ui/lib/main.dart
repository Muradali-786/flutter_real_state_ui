import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:real_state_ui/View/home_page.dart';
import 'package:real_state_ui/View/menu_page.dart';
import 'package:real_state_ui/View/zoom_home_page.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EntryApp(),
    );
  }
}

class EntryApp extends StatefulWidget {
  const EntryApp({super.key});

  @override
  State<EntryApp> createState() => _EntryAppState();
}

class _EntryAppState extends State<EntryApp> with TickerProviderStateMixin {
  late MenuProvider menuController;

  @override
  void initState() {
    super.initState();

    menuController = MenuProvider(
      vsync: this,
    )..addListener(
        () => setState(
          () {},
        ),
      );
  }

  @override
  void dispose() {
    menuController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => menuController,
      child: ZoomHomePage(
        menuScreen: const MenuPage(),
        contentScreen: Layout(
          contentBuilder: (cc) => const HomePage(),
        ),
      ),
    );
  }
}
