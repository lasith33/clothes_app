import 'package:flutter/material.dart';


class AdminUploadItemsScreen extends StatefulWidget {


  @override
  State<AdminUploadItemsScreen> createState() => _AdminUploadItemsScreenState();
}



class _AdminUploadItemsScreenState extends State<AdminUploadItemsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         decoration: BoxDecoration(
           gradient: LinearGradient(
             colors: [
               Colors.black54,
               Colors.deepPurple,
             ],
           ),
         ),
      ),
    );
  }
}
