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
          Expanded(
              child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Wrap(
              direction: Axis.horizontal,
              spacing: 40,
              children: [
                Container(
                  height: 128,
                  width: 160,
                  color: Colors.blue,
                ),
                Container(
                  height: 128,
                  width: 160,
                  color: Colors.blue,
                ),
                Container(
                  height: 128,
                  width: 160,
                  color: Colors.blue,
                ),
                Container(
                  height: 128,
                  width: 160,
                  color: Colors.blue,
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
