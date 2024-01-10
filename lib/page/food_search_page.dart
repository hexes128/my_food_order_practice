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
                    hintText: 'Search Super Foodoo',
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
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 64),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey,
                      ),
                      height: 128,
                      width: 160,
                      child: const Padding(
                          padding: EdgeInsets.only(top: 64),
                          child: Column(
                            children: [
                              Text(
                                'Chicken Wings',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0.09,
                                  letterSpacing: -0.33,
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '\$',
                                      style: TextStyle(
                                        color: Color(0xFFFFC532),
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        height: 0.09,
                                        letterSpacing: -0.35,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '20.99',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        height: 0.09,
                                        letterSpacing: -0.35,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                    const SizedBox(
                      width: 160,
                      child: Image(image: AssetImage('assets/search_page/fried_chicken.png')),
                    )
                  ],
                ),
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 64),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey,
                      ),
                      height: 128,
                      width: 160,
                      child: const Padding(
                          padding: EdgeInsets.only(top: 64),
                          child: Column(
                            children: [
                              Text(
                                'Gratin',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0.09,
                                  letterSpacing: -0.33,
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '\$',
                                      style: TextStyle(
                                        color: Color(0xFFFFC532),
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        height: 0.09,
                                        letterSpacing: -0.35,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '20.99',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        height: 0.09,
                                        letterSpacing: -0.35,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                    const SizedBox(
                      width: 160,
                      child: Image(image: AssetImage('assets/search_page/gratin.png')),
                    )
                  ],
                ),
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 64),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey,
                      ),
                      height: 128,
                      width: 160,
                      child: const Padding(
                          padding: EdgeInsets.only(top: 64),
                          child: Column(
                            children: [
                              Text(
                                'Sundae',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0.09,
                                  letterSpacing: -0.33,
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '\$',
                                      style: TextStyle(
                                        color: Color(0xFFFFC532),
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        height: 0.09,
                                        letterSpacing: -0.35,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '20.99',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        height: 0.09,
                                        letterSpacing: -0.35,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                    const SizedBox(
                      width: 160,
                      child: Image(image: AssetImage('assets/search_page/sundae.png')),
                    )
                  ],
                ),
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 64),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey,
                      ),
                      height: 128,
                      width: 160,
                      child: const Padding(
                          padding: EdgeInsets.only(top: 64),
                          child: Column(
                            children: [
                              Text(
                                'Supreme Pizza',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0.09,
                                  letterSpacing: -0.33,
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '\$',
                                      style: TextStyle(
                                        color: Color(0xFFFFC532),
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        height: 0.09,
                                        letterSpacing: -0.35,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '20.99',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        height: 0.09,
                                        letterSpacing: -0.35,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                    const SizedBox(
                      width: 160,
                      child: Image(image: AssetImage('assets/search_page/pizza.png')),
                    )
                  ],
                ),
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 64),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey,
                      ),
                      height: 128,
                      width: 160,
                      child: const Padding(
                          padding: EdgeInsets.only(top: 64),
                          child: Column(
                            children: [
                              Text(
                                'Extra Meat Burger',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0.09,
                                  letterSpacing: -0.33,
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '\$',
                                      style: TextStyle(
                                        color: Color(0xFFFFC532),
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        height: 0.09,
                                        letterSpacing: -0.35,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '20.99',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        height: 0.09,
                                        letterSpacing: -0.35,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                    const SizedBox(
                      width: 160,
                      child: Image(image: AssetImage('assets/search_page/hamburger.png')),
                    )
                  ],
                ),
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 64),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey,
                      ),
                      height: 128,
                      width: 160,
                      child: const Padding(
                          padding: EdgeInsets.only(top: 64),
                          child: Column(
                            children: [
                              Text(
                                'Berry cake',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0.09,
                                  letterSpacing: -0.33,
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '\$',
                                      style: TextStyle(
                                        color: Color(0xFFFFC532),
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        height: 0.09,
                                        letterSpacing: -0.35,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '20.99',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        height: 0.09,
                                        letterSpacing: -0.35,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                    const SizedBox(
                      width: 120,
                      child: Image(image: AssetImage('assets/search_page/cake.png')),
                    )
                  ],
                ),
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 64),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey,
                      ),
                      height: 128,
                      width: 160,
                      child: const Padding(
                          padding: EdgeInsets.only(top: 64),
                          child: Column(
                            children: [
                              Text(
                                'Ramen',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0.09,
                                  letterSpacing: -0.33,
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '\$',
                                      style: TextStyle(
                                        color: Color(0xFFFFC532),
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        height: 0.09,
                                        letterSpacing: -0.35,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '20.99',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        height: 0.09,
                                        letterSpacing: -0.35,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                    const SizedBox(
                      width: 160,
                      child: Image(image: AssetImage('assets/search_page/ramen.png')),
                    )
                  ],
                ),
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 64),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey,
                      ),
                      height: 128,
                      width: 160,
                      child: const Padding(
                          padding: EdgeInsets.only(top: 64),
                          child: Column(
                            children: [
                              Text(
                                'Ice-cream',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0.09,
                                  letterSpacing: -0.33,
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '\$',
                                      style: TextStyle(
                                        color: Color(0xFFFFC532),
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        height: 0.09,
                                        letterSpacing: -0.35,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '20.99',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        height: 0.09,
                                        letterSpacing: -0.35,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      width: 160,
                      child: const Image(image: AssetImage('assets/search_page/ice_cream.png')),
                    )
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
