// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:resumeportfolio/screens/Home/Logo/LogoHeader.dart';
import 'package:resumeportfolio/screens/Home/ProjectsList/ProjectsList.dart';
import 'package:resumeportfolio/screens/Home/Social/socialNavigations.dart';
import 'package:resumeportfolio/screens/Home/profile/Profile_Info.dart';
import 'package:resumeportfolio/widgets/Custom_button.dart';

class Smallscreen extends StatefulWidget {
  const Smallscreen({super.key});

  @override
  State<Smallscreen> createState() => _SmallscreenState();
}

class _SmallscreenState extends State<Smallscreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        const LogoHeader(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        const profileInfo(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        const Customdivider(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        const ProjectsList(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        const Customdivider(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        const Customdivider(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        const socialNavigations(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        const Customdivider(),
      ],
    );
  }
}











// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Align(
//         alignment: Alignment.topLeft,
//         child: Padding(
//           padding: EdgeInsets.all(18.0),
//           child: Transform.rotate(
//             angle: AppClass.isLogoHovering ? 50 : 0,
//             child: InkWell(
//               onTap: () {},
//               onHover: (val) {
//                 setState(() {
//                   AppClass.isLogoHovering = val;
//                 });
//               },
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: AnimatedDefaultTextStyle(
//                     child: Text("S."),
//                     style: TextStyle(
//                         color: AppClass.isLogoHovering
//                             ? Colors.orangeAccent
//                             : Colors.white,
//                         fontSize: AppClass.isLogoHovering ? 70 : 50,
//                         fontWeight: AppClass.isLogoHovering
//                             ? FontWeight.bold
//                             : FontWeight.w900),
//                     duration: Duration(milliseconds: 500)),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


//  AnimatedContainer(
//           duration: Duration(milliseconds: 300),
//           padding: EdgeInsets.only(left: AppClass.pointer.dx / 10),
//           child: AnimatedDefaultTextStyle(
//               duration: Duration(milliseconds: 200),
//               child: Text("Get in Touch".toUpperCase()),
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.w900,
//                   fontSize: 70)),
//         ),

//  InkWell(
//           onTap: () {
//             js.context.callMethod("open", ["https://sahdeepsingh.com"]);
//           },
//           onHover: (v) {
//             setState(() {
//               AppClass.mainItemHover = v ? 2 : 0;
//               Colors.black.withRed(v ? 30 : 0);
//             });
//           },
//           child: AnimatedDefaultTextStyle(
//             duration: Duration(milliseconds: 200),
//             child: Text(" visit website".toUpperCase()),
//             textAlign: TextAlign.center,
//             style: TextStyle(
//                 color: AppClass.mainItemHover == 2
//                     ? Colors.white
//                     : Colors.deepOrange,
//                 fontWeight: FontWeight.w900,
//                 fontSize: (AppClass.mainItemHover == 2 ? 70 : 50)),
//           ),
//         ),

// InkWell(
//           onTap: () {
//             js.context.callMethod("open", ["https://sahdeepsingh.com/contact"]);
//           },
//           onHover: (v) {
//             setState(() {
//               AppClass.mainItemHover = v ? 1 : 0;
//               Colors.black.withRed(v ? 30 : 0);
//             });
//           },
//           child: AnimatedDefaultTextStyle(
//             duration: Duration(milliseconds: 200),
//             child: Text("Mariselvam B"),
//             style: TextStyle(
//                 color: AppClass.mainItemHover == 1
//                     ? Colors.white
//                     : Colors.deepOrange,
//                 fontWeight: FontWeight.w900,
//                 fontSize: (AppClass.mainItemHover == 1 ? 70 : 50)),
//           ),
//         ),