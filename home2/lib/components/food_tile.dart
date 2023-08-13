import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home2/models/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;
  const FoodTile({super.key, required this.food, required this.onTap });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[100], borderRadius: BorderRadius.circular(20)),
        margin: EdgeInsets.only(left: 20),
        padding: EdgeInsets.all(30),
        child: Column(children: [
          //img
    
          Image.asset(food.imgePath, height: 140),
    
          //text
          Text(
            food.name,
            style: GoogleFonts.dancingScript(fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          //price /ratong
    
          SizedBox(
              width: 160,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //price
    
                  Text('\SR ' + food.price,
                      style: TextStyle(fontWeight: FontWeight.bold)),
    
                  //rating
    
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow[800],
                      ),
                      Text(
                        food.rating,
                      ),
                    ],
                  )
                ],
              ))
        ]),
      ),
    );
  }
}
