import 'package:flutter/material.dart';

class PopUp extends StatelessWidget {
  const PopUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
       Center(
        child: Stack(
          alignment: AlignmentDirectional.topEnd,
          children: [
            Container(
              color: Colors.transparent,
            ),
            Container(
              height: 200,
              width: 200,
              alignment: Alignment(0, 0),
              color: Colors.yellow,
            )
          ],
        ),
      );
  }
}
