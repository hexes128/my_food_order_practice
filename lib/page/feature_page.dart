import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FeaturePage extends HookConsumerWidget {
  const FeaturePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Featured on Super Foodoo'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Center(
                child: Container(
              margin: const EdgeInsets.only(top: 36),
              width: 350,
              height: 260,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    child: Container(
                      width: 350,
                      height: 198,
                      decoration: ShapeDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/feature_page/burger_with_french_fries.png'),
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 20,
                    child: Container(
                      width: 176,
                      height: 26,
                      decoration: const ShapeDecoration(
                        color: Color(0xFFFFDD22),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(14),
                            bottomRight: Radius.circular(14),
                          ),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'Free Item(Spend \$10)',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
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
                    right: 12,
                    top: 12,
                    child: SizedBox(
                      height: 30,
                      width: 30,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 0,
                    top: 210,
                    child: Text(
                      'McDonald’s(Best Offer)',
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
                          '4.5',
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
                      '\$4.99 Delivery Fee . 15-30 min',
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
              margin: const EdgeInsets.only(top: 36),
              width: 350,
              height: 260,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    child: Container(
                      width: 350,
                      height: 198,
                      decoration: ShapeDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/feature_page/delicious_pizza.png'),
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 20,
                    child: Container(
                      width: 176,
                      height: 26,
                      decoration: const ShapeDecoration(
                        color: Color(0xFFFFDD22),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(14),
                            bottomRight: Radius.circular(14),
                          ),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'Buy 1 Get 1 Free',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
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
                    right: 12,
                    top: 12,
                    child: SizedBox(
                      height: 30,
                      width: 30,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 0,
                    top: 210,
                    child: Text(
                      'Supreme Pizza',
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
                          '4.4',
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
                      '\$2.99 Delivery Fee . 15-30 min',
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
              margin: const EdgeInsets.only(top: 36),
              width: 350,
              height: 260,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    child: Container(
                      width: 350,
                      height: 198,
                      decoration: ShapeDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/feature_page/delicious_tacos.png'),
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 20,
                    child: Container(
                      width: 176,
                      height: 26,
                      decoration: const ShapeDecoration(
                        color: Color(0xFFFFDD22),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(14),
                            bottomRight: Radius.circular(14),
                          ),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          '30% off(Spend \$10)',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
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
                    right: 12,
                    top: 12,
                    child: SizedBox(
                      height: 30,
                      width: 30,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 0,
                    top: 210,
                    child: Text(
                      'McDonald’s(Best Offer)',
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
                          '4.3',
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
                      '\$4.99 Delivery Fee . 15-30 min',
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
