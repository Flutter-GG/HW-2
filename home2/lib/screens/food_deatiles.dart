import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home2/components/button.dart';
import 'package:home2/models/food.dart';
import 'package:home2/theme/colors.dart';

class FooDet extends StatefulWidget {
  final Food food;

  const FooDet({super.key, required this.food});

  @override
  State<FooDet> createState() => _FooDetState();
}

class _FooDetState extends State<FooDet> {
  //var
  int quantatCount = 0;

  //decrem quant

  void decrmantQuant() {
    setState(() {
      if (quantatCount > 0) {
        quantatCount--;
      }
    });
  }

  //invrem quant

  void intcramQuant() {
    setState(() {
      quantatCount++;
    });
  }

  void addtocard() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ListView(
                children: [
                  //img
                  Image.asset(
                    widget.food.imgePath,
                    height: 200,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow[900],
                      ),
                      const SizedBox(width: 5),
                      Text(widget.food.rating),
                    ],
                  ),
                  Text(
                    widget.food.name,
                    style: GoogleFonts.dmSerifDisplay(fontSize: 28),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    'Discreption',
                    style: TextStyle(
                        color: Colors.grey[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'A cheese pizza is a classic and popular type of pizza that features a simple yet delicious combination of flavors. It typically consists of a pizza crust topped with a layer of tomato sauce and generous amounts of melted cheese, usually mozzarella. The cheese used in a cheese pizza is often stretchy and gooey when melted, adding a creamy and savory element to the pizza.',
                    style: TextStyle(
                        color: Colors.grey[600], fontSize: 14, height: 2),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(25),
            color: primaryColor,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\SR " + widget.food.price,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                              color: sacandoryColor),
                          child: IconButton(
                            icon: const Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                            onPressed: decrmantQuant,
                          ),
                        ),
                        Center(
                          child: Text(
                            quantatCount.toString(),
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                              color: sacandoryColor),
                          child: IconButton(
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            onPressed: intcramQuant,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                MyBoutton(text: "add to card", onTap: addtocard)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
