import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
            return  Container(
          margin: EdgeInsets.only(top: 5.0),
          width: MediaQuery.of(context).size.width/1.5,
          height: 40.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: Colors.grey[300],
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search for detail",
              hintStyle: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.grey,
                fontSize: 13.0
              ),
              border: InputBorder.none,
              prefixIcon: Icon(
                CupertinoIcons.search,
                color: Colors.black,
                size: 20.0,
              ),
            ),
            onChanged: (text){
               text = text.toLowerCase();
            }
          ),
        );
       

      }
    
  }

