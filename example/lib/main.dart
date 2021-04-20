import 'package:flutter/material.dart';
import 'package:stacked_page_view/stacked_page_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //
  final PageController pageController = PageController();
  // Some RGB bling
  final List<Color> colors = <Color>[
    Colors.red,
    Colors.blue,
    Colors.yellow,
    Colors.green,
    Colors.purpleAccent,
    Colors.orange
  ];
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: PageView.builder(
          itemCount: 10,
          scrollDirection: Axis.vertical,
          controller: pageController,
          itemBuilder: (context, index) {
            // Wrap the ` StackedPageView` inside the inside the ` PageView.builder `
            return StackPageView(
              controller: pageController,
              index: index,
              child: Container(
                color: (colors..shuffle()).first,
                child: Center(
                  child: Text(
                    '$index',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
