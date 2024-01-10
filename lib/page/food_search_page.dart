import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FoodSearchPage extends HookConsumerWidget {
  const FoodSearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hot spots'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
                width: 350,
                child: SearchAnchor(builder: (BuildContext context, SearchController controller) {
                  return SearchBar(
                    controller: controller,
                    padding: const MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.symmetric(horizontal: 16.0)),
                    onTap: () {
                      controller.openView();
                    },
                    onChanged: (_) {
                      controller.openView();
                    },
                    leading: const Icon(Icons.search),
                    trailing: <Widget>[
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.wb_sunny_outlined),
                        selectedIcon: const Icon(Icons.brightness_2_outlined),
                      )
                    ],
                  );
                }, suggestionsBuilder: (BuildContext context, SearchController controller) {
                  return List<ListTile>.generate(5, (int index) {
                    final String item = 'item $index';
                    return ListTile(
                      title: Text(item),
                      onTap: () {},
                    );
                  });
                })),
          ),
          const SizedBox(
            height: 26,
          ),
          Expanded(
              child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Wrap(
              alignment: WrapAlignment.center,
              direction: Axis.horizontal,
              spacing: 40,
              runSpacing: 12,
              children: [
                Stack(
                  alignment:Alignment.topCenter,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 64),
                      height: 128,
                      width: 160,
                      color: Colors.blue,
                    ),
                    const Image(image: AssetImage('assets/fried_chicken.png'))
                  ],
                ),
                Stack(
                  alignment:Alignment.topCenter,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 64),
                      height: 128,
                      width: 160,
                      color: Colors.blue,
                    ),
                    const Image(image: AssetImage('assets/gratin.png'))
                  ],
                ),
                Stack(
                  alignment:Alignment.topCenter,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 64),
                      height: 128,
                      width: 160,
                      color: Colors.blue,
                    ),
                    const Image(image: AssetImage('assets/hamburger.png'))
                  ],
                ),
                Stack(
                  alignment:Alignment.topCenter,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 64),
                      height: 128,
                      width: 160,
                      color: Colors.blue,
                    ),
                    const Image(image: AssetImage('assets/ice_cream.png'))
                  ],
                ),
                Stack(
                  alignment:Alignment.topCenter,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 64),
                      height: 128,
                      width: 160,
                      color: Colors.blue,
                    ),
                    const Image(image: AssetImage('assets/cake.png'))
                  ],
                ),
                Stack(
                  alignment:Alignment.topCenter,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 64),
                      height: 128,
                      width: 160,
                      color: Colors.blue,
                    ),
                    const Image(image: AssetImage('assets/ramen.png'))
                  ],
                ),
                Stack(
                  alignment:Alignment.topCenter,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 64),
                      height: 128,
                      width: 160,
                      color: Colors.blue,
                    ),
                    const Image(image: AssetImage('assets/pizza.png'))
                  ],
                ),
                Stack(
                  alignment:Alignment.topCenter,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 64),
                      height: 128,
                      width: 160,
                      color: Colors.blue,
                    ),
                    const Image(image: AssetImage('assets/sundae.png'))
                  ],
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
