import 'package:flutter/material.dart';
import 'package:todo/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _buildAppBar(),
      body: Container(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  prefixIcon: Icon(
                    Icons.search, 
                    color: tdBlack, 
                    size: 20
                  ),
                  prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25)
                ),
              ),
            )
          ]
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: tdBGColor,
      elevation: 0,
      title:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Icon(
          Icons.menu, 
          color: tdBlack, 
          size: 30,
        ),
         Container(
          height: 40,
          width: 40,
          child: CircleAvatar(
            radius: 40,
            child: SizedBox(
              width: 40,
              height: 40,
              child: ClipOval(
                child: Image.asset('assets/images/avatar.jpeg')
              )
            ),

            ),
         )
        ],
      )
    );
  }
}