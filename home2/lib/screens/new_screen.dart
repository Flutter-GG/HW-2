// import 'package:flutter/material.dart';
// import 'package:home2/dataset/data_all.dart';
// import 'package:home2/dataset/models.dart';

// import '../models/food.dart';
//import 'package:json_prodect/product_page.dart';

//import 'models/prod_data.dart';
//import 'package:model_data_app/pages/product_page.dart';

// class CardWidget extends StatefulWidget {
//   const CardWidget({
//     super.key,
//     required this.product,
//   });

//   final Food product;

//   @override
//   State<CardWidget> createState() => _CardWidgetState();
// }

// class _CardWidgetState extends State<CardWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       // onTap: () => Navigator.push(
//       //     context,
//       //     MaterialPageRoute(
//       //         builder: (context) => ProductPage(
//       //               product: widget.product,
//       //             ))),
//       child: SizedBox(
//         height: 100,
//         child: Card(
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//           margin: const EdgeInsets.all(8),
//           elevation: 3,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(15),
//                       child: Image.network(
//                         widget.product.price!,
//                         height: 70,
//                         width: 70,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SizedBox(
//                         width: 200,
//                         child: Text(
//                           overflow: TextOverflow.fade,
//                           widget.product.name!,
//                           style: const TextStyle(
//                               fontSize: 18, fontWeight: FontWeight.w600),
//                         ),
//                       ),
//                       Text(widget.product.
//                       price!),
//                     ],
//                   ),
//                 ],
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(right: 24),
//                 child: Text(
//                   overflow: TextOverflow.fade,
//                   "${widget.product.price} \$",
//                   style: const TextStyle(
//                       color: Color.fromARGB(255, 228, 186, 186),
//                       fontSize: 16,
//                       fontWeight: FontWeight.w600),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
