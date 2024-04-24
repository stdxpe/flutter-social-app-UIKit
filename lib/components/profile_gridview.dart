import 'package:flutter/material.dart';

// class ProfileGridview extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GridView.count(
//       crossAxisCount: 4,
//       children: new List<Widget>.generate(
//         16,
//         (index) {
//           return new GridTile(
//             child: new Card(
//               color: Colors.blue,
//               child: new Text("$index"),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
class ExampleGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(2),
        // crossAxisSpacing: 1,
        // mainAxisSpacing: 1,
        children: List.generate(15, (index) {
          return Card(
            child: Image.asset(
              'assets/images/image5.png',
              fit: BoxFit.cover,
            ),
          );
        }),
      ),
    );
  }
}
