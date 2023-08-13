import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home2/components/button.dart';
import 'package:home2/models/food.dart';
import 'package:home2/screens/food_deatiles.dart';

import '../components/food_tile.dart';
import '../theme/colors.dart';

List foodMenu = [
  // pizza
  Food(
      name: "Cheese pizza",
      price: "300 SR",
      imgePath: "lib/Imges/pizza-3.png",
      rating: "4.9"),

  Food(
      name: "Spicy pizza",
      price: "25",
      imgePath: "lib/Imges/pizza-2.png",
      rating: "4.9"),

  Food(
      name: "Ve pizza",
      price: "300",
      imgePath: "lib/Imges/pizza-5.png",
      rating: "4.9"),

  Food(
    name: "Cheese pizza",
    price: "300",
    imgePath: "lib/Imges/pizza-6.png",
    rating: "4.9",
  ),
];
// go to that item det
void navigateToFoodTile(BuildContext context, int index) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => FooDet(
        food: foodMenu[index],
      ),
    ),
  );
}

class MenuPage extends StatefulWidget {
  const MenuPage({
    super.key, // required this.product,
  });
  //final Mails product;

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 224, 224),
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Icon(
            Icons.menu,
            color: Colors.black,
          )),
      body: SafeArea(
        minimum: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //prom
            GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(20)),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding:
                    const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(children: [
                      Text(
                        "get 50% promo",
                        style: GoogleFonts.dmSerifDisplay(
                            fontSize: 20, color: Colors.white),
                      ),
                      const SizedBox(height: 10),

                      // buttom
                      MyBoutton(
                        text: "see",
                        onTap: () {},
                      )
                    ]),

                    // img
                    Image.asset(
                      "lib/Imges/pizza.png",
                      height: 100,
                      width: 100,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                  decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10)),
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10)),
              )),
            ),
            const SizedBox(height: 25),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                'Food Menue',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.grey[800]),
              ),
            ),
            const SizedBox(height: 10),

            //popular food

            Expanded(
                child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodMenu.length,
              itemBuilder: (context, index) => FoodTile(
                food: foodMenu[index],
                onTap: () => navigateToFoodTile(context, index),
              ),
            )),
            const SizedBox(
              height: 20,
            ),

            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(25)),
              margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "lib/Imges/pizza-4.png",
                        height: 100,
                        width: 100,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Pizza with egges',
                            style: TextStyle(fontSize: 18),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            '\SR 90 ',
                            style: TextStyle(color: Colors.grey[700]),
                          ),

                          // تفضيل

                          const Icon(Icons.favorite, color: Colors.grey)
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
