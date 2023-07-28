import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:sample_project/ApiService.dart';
import 'package:sample_project/BreweriesData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  late List<BreweriesData>? breweriesData = [];

  void incrementCounter() async{
    breweriesData = (await ApiService().getBreweries())!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  void initState(){
    super.initState();
    incrementCounter();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: ListView.builder(
          itemCount: breweriesData?.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                leading: const Icon(Icons.fastfood_rounded
                ),

                title: Text("${breweriesData?[index].name}"),
              subtitle: breweriesData?[index].address1 == null ? const Text("No address available"):
              Text("${breweriesData?[index].address1}"),
            );
          }),
    );
  }
}
