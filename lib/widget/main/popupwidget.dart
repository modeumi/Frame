// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// class PopUpWidget extends StatelessWidget {
 

//   const PopUpWidget({super.key});
//    bool _showPopup = false;

//   void _togglePopup() {
//     setState(() {
//       _showPopup = !_showPopup;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onClose,
//       child: Stack(
//       children: [
//         Positioned(
//           bottom: 70,
//           left: 48,
//           child: SvgPicture.asset('assets/main/Union.svg'),
//         ),
//         Positioned(
//           bottom: 85,
//           left: 52,
//           child: Image.asset('assets/main/3627468_16971960998015_big 1.png'),
//         ),
//         if (_showPopup) PopUpWidget(onClose: _togglePopup),
//         Positioned(
//           bottom: 55,
//           left: 43,
//           child: GestureDetector(
//             onTap: _togglePopup,
//             child: Container(
//               width: 8,
//               height: 8,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(50),
//                 color: Colors.white,
//               ),
//             ),
//           ),
//         ),
//       ],
//     ),
//     );
//   }
// }
