// import 'package:flutter/material.dart';
// //import 'package:json_prodect/models/prod_data.dart';
// //import 'package:json_prodect/prodect.dart';

// //import 'main.dart';

// class ProductPage extends StatelessWidget {
//   const ProductPage({
//     super.key,
//     required this.mails,
//   });
//   final Mails product;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("All Products"),
//           leading: Icon(Icons.menu),
//         ),
//         body: Column(
//           children: [
//             Image.network(
//               product.thumbnail.toString(),
//               fit: BoxFit.cover,
//             ),

//             //  Image.network(
//             //   product.thumbnail.toString(),),
//             SizedBox(
//               height: 20,
//             ),
            
//             Text(
//               product.title.toString(),
//             ),
//             Text(product.id.toString()),
//             Text(product.price.toString()),
//             Text(product.brand.toString()),
//             Text(
//               product.discountPercentage.toString(),
//               style: TextStyle(fontSize: 22),
//             )
//           ],
//         ));
//   }
// }
