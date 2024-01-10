import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_food_order_practice/page/favorite_page.dart';
import 'package:my_food_order_practice/page/feature_page.dart';
import 'package:my_food_order_practice/page/food_search_page.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends HookConsumerWidget {
  MyApp({super.key});

  final GlobalKey<NavigatorState> navKey = GlobalKey();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Formosa Oil APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: GoRouter(
        navigatorKey: navKey,
        routes: [
          GoRoute(
              path: '/',
              builder: (context, state) => const MyHomePage(
                    title: '123',
                  ),
              routes: [
                //-----------------------------------------註冊
                GoRoute(
                  path: 'food_search_page',
                  name: 'food_search_page',
                  builder: (context, state) => const FoodSearchPage(),
                ),
                GoRoute(path: 'feature_page', name: 'feature_page', builder: (context, state) => const FeaturePage(), ),
                GoRoute(path: 'favorite_page', name: 'favorite_page', builder: (context, state) => const FavoritePage(), ),
              ]),
        ],
      ),
      builder: (context, child) {
        return child ?? const Text('child');
      },
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
      body: Center(
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
            ElevatedButton(
                onPressed: () {
                  context.pushNamed('food_search_page');
                },
                child: const Text('搜尋頁')),
            ElevatedButton(
                onPressed: () {
                  context.pushNamed('feature_page');
                },
                child: const Text('feature')),
            ElevatedButton(
                onPressed: () {
                  context.pushNamed('favorite_page');
                },
                child: const Text('favorite')),
          ],
        ),
      ),
    );
  }
}
