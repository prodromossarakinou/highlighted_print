import 'package:flutter/material.dart';
import 'package:highlighted_print/highlighted_print.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Highlighted Print',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Highlighted Print'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                printColoredBackground("This is a text with Red BG");
              },
              child: const Text("PRINT RED-BG"),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                printColoredBackground("This is a text with Green BG",
                    color: BgColor.green);
              },
              child: const Text("PRINT GREEN-BG"),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                printColoredBackground("This is a text with yellow BG",
                    color: BgColor.yellow);
              },
              child: const Text("PRINT YELLOW-BG"),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                printColoredText("This is a red text");
              },
              child: const Text("PRINT RED"),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                printColoredText("This is a green text",
                    color: TextColor.green);
              },
              child: const Text("PRINT GREEN"),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                printColored(
                  "This is a blue text with green background",
                  textColor: TextColor.blue,
                  bgColor: BgColor.green,
                );
              },
              child: const Text("PRINT GREEN BG - BLUE TEXT"),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
