import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home:  MyWidget(title: 'Flutter Demo Home Page', title2: 'aaa'),
    );
  }
}
class MyWidget extends StatefulWidget {
   MyWidget({super.key, required this.title, required this.title2 });

  
 String title;
 String? title2;
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

int count =0;
class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            count ++;
            setState(() {
              
            });
          },
          child: Text("$count"),
        ),
      ),
    );
  }
}