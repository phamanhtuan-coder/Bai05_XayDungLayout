import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xay dung layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Widget imgSelection = Image.asset(
      'images/lake.jpg',
      width: double.infinity,
      height: 240,
      fit: BoxFit.cover,
    );

    return Scaffold(
      body: Column(
        children: <Widget>[
          imgSelection,
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Hồ con rùa 4.0"),
                      SizedBox(height: 8.0),
                      Text("TP. Hồ Chí Minh, VN"),
                    ],
                  ),
                ),
                const Column(
                  children: <Widget>[
                    SizedBox(height: 8.0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.red,
                        ),
                        SizedBox(
                            width:
                                4), // Add some space between the icon and the text
                        Text("41"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Placeholder for additional content
          const Expanded(
            child: Center(
              child: Text('Third group content here'),
            ),
          ),
          const Expanded(
            child: Center(
              child: Text('Fourth group content here'),
            ),
          ),
        ],
      ),
    );
  }
}
