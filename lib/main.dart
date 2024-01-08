import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_food_order_practice/page/food_search_page.dart';

void main() {
  runApp( ProviderScope(child: MyApp()));
}

class MyApp extends HookConsumerWidget {
  MyApp({super.key});
  final GlobalKey<NavigatorState> navKey = GlobalKey();

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return
      MaterialApp.router(


        debugShowCheckedModeBanner: false,
        title: 'Formosa Oil APP',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routerConfig: GoRouter(
          navigatorKey: navKey,

          routes: [
            //-----------------------------------------登入
            GoRoute(path: '/', builder: (context, state) => const MyHomePage(title: '123',), routes: [
              //-----------------------------------------註冊
              GoRoute(path: 'food_search_page', name: 'food_search_page', builder: (context, state) => FoodSearchPage()),


            ]),
          ],
        ),
        builder: (context, child) {
          return  child ?? const Text('child');
        },
      );

  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {




  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: const Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          context.pushNamed('food_search_page');

        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
