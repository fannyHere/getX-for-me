import 'package:flutter/material.dart';
import 'package:get/get.dart';

class life_cycle_statefull extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LifeCycleStateful(),
    );
  }
}

class LifeCycleStateful extends StatefulWidget {
  @override
  State<LifeCycleStateful> createState() => _LifeCycleStatefulState();
}

class _LifeCycleStatefulState extends State<LifeCycleStateful> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.abc),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => newPage(),
                ),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: part2_countWidget(
            count:
                count), //inituh count: count muncul dari sebelum di extract widgetnya ada string interpolation countnya pada widget text
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
      ),
    );
  }
}

class part2_countWidget extends StatefulWidget {
  const part2_countWidget({
    super.key,
    required this.count, //akibat ditambahkan count dll
  });

  final int count;

  @override
  State<part2_countWidget> createState() => _part2_countWidgetState();
}

class _part2_countWidgetState extends State<part2_countWidget> {
  void initState() {
    print("initState");
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print("didChangeDependencies");
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant part2_countWidget oldWidget) {
    print("didupdatewidget");
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    print("dispose");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text("Angka ${widget.count}");
  }
}

class newPage extends StatelessWidget {
  const newPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text("Welcome: This is the new page"),
    );
  }
}
