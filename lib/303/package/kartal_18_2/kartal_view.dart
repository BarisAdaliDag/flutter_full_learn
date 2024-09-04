// import 'package:flutter/material.dart';
// import 'package:kartal/kartal.dart';

// typedef ImageLoader = void Function(String url);

// class KartalView extends StatefulWidget {
//   const KartalView({super.key, this.onImage});

//   final ImageLoader? onImage;
//   @override
//   State<KartalView> createState() => _KartalViewState();
// }

// class _KartalViewState extends State<KartalView> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Column(
//         children: [
//           InkWell(
//               onTap: () {
//                 context.navigateToPage(const ImageLearn202(),
//                     type: SlideType.BOTTOM);
//               },
//               child: Text('Kartal', style: context.textTheme.displayLarge)),
//           Icon(context.isIOSDevice ? Icons.ios_share : Icons.android_rounded),
//           AnimatedContainer(
//               duration: context.durationLow,
//               height: context.isKeyBoardOpen ? 0 : context.dynamicHeight(0.15),
//               color: Colors.red),
//           const TextField(),
//           Image.network(''.randomImage),
//           InkWell(
//               onTap: () {
//                 'vbacik.10@gmail.com'.launchEmail;
//                 'https://github.com/VB10/Flutter-Full-Learn/issues/3'
//                     .launchWebsite;
//               },
//               child: Text('vb', style: context.textTheme.displayLarge))
//         ],
//       ),
//     );
//   }
// }
