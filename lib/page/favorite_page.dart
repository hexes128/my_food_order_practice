import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FavoritePage extends HookConsumerWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Favorites'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 26),
                  width: 340,
                  height: 260,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        child: Container(
                          width: 340,
                          height: 180,
                          decoration: ShapeDecoration(
                            image: const DecorationImage(
                              image: AssetImage('assets/favorite_page/delicious_pasta.png'),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                        ),
                      ),

                      Positioned(
                        right: 12,
                        top: 12,
                        child: SizedBox(
                          height: 30,
                          width: 30,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.favorite),
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 0,
                        top: 210,
                        child: Text(
                          'Delicious Pasta',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0.06,
                            letterSpacing: -0.49,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 10,
                        bottom: 10,
                        child: Container(
                          width: 44,
                          height: 38,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFEAEAEA),
                            shape: OvalBorder(),
                          ),
                          child: const Center(
                            child: Text(
                              '4.6',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                height: 0.09,
                                letterSpacing: -0.33,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 240,
                        child: Text(
                          '\$8.99 Delivery Fee . 15-30 min',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.550000011920929),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0.09,
                            letterSpacing: -0.33,
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 26),
                  width: 340,
                  height: 260,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        child: Container(
                          width: 340,
                          height: 180,
                          decoration: ShapeDecoration(
                            image: const DecorationImage(
                              image: AssetImage('assets/favorite_page/cupcakes_with_colorful.png'),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                        ),
                      ),

                      Positioned(
                        right: 12,
                        top: 12,
                        child: SizedBox(
                          height: 30,
                          width: 30,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.favorite),
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 0,
                        top: 210,
                        child: Text(
                          'Delicious Cupcakes',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0.06,
                            letterSpacing: -0.49,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 10,
                        bottom: 10,
                        child: Container(
                          width: 44,
                          height: 38,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFEAEAEA),
                            shape: OvalBorder(),
                          ),
                          child: const Center(
                            child: Text(
                              '4.2',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                height: 0.09,
                                letterSpacing: -0.33,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 240,
                        child: Text(
                          '\$5.99 Delivery Fee . 15-30 min',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.550000011920929),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0.09,
                            letterSpacing: -0.33,
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 26),
                  width: 340,
                  height: 260,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        child: Container(
                          width: 340,
                          height: 180,
                          decoration: ShapeDecoration(
                            image: const DecorationImage(
                              image: AssetImage('assets/favorite_page/delicious_looking_burger.png'),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                        ),
                      ),

                      Positioned(
                        right: 12,
                        top: 12,
                        child: SizedBox(
                          height: 30,
                          width: 30,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.favorite),
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 0,
                        top: 210,
                        child: Text(
                          'Delicious Cupcakes',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0.06,
                            letterSpacing: -0.49,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 10,
                        bottom: 10,
                        child: Container(
                          width: 44,
                          height: 38,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFEAEAEA),
                            shape: OvalBorder(),
                          ),
                          child: const Center(
                            child: Text(
                              '4.2',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                height: 0.09,
                                letterSpacing: -0.33,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 240,
                        child: Text(
                          '\$5.99 Delivery Fee . 15-30 min',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.550000011920929),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0.09,
                            letterSpacing: -0.33,
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ));
  }
}
