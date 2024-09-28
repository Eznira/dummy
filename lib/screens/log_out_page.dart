import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LogOutPopUp extends StatelessWidget {
  const LogOutPopUp({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.deepPurple[100],

      content: Container(
        width: 400,
        height: 270,
        child: Column(
          children: [
            Spacer(),
            Icon(
              Icons.logout,
              size: 100,

            ),
            Text("Are you sure!", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
            Spacer(),
            GestureDetector(
              onTap: () {SystemNavigator.pop();},
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.red,),
                child: Center(child: Text("Yes", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),)),
              ),
            ),
            Spacer(),

          ],
        ),
      ),
    );
  }
}
