import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';


class AdminUploadItemsScreen extends StatefulWidget {


  @override
  State<AdminUploadItemsScreen> createState() => _AdminUploadItemsScreenState();
}



class _AdminUploadItemsScreenState extends State<AdminUploadItemsScreen> {


  final ImagePicker _picker =ImagePicker();
  XFile? pickedImageXFile;

  captureImageWithPhoneCamera() async
  {
    pickedImageXFile =await _picker.pickImage(source: ImageSource.camera);// capture image file

    Get.back();
  }

  pickImageFromGallery() async
  {
    pickedImageXFile =await _picker.pickImage(source: ImageSource.gallery);// image take the gallery

    Get.back();
  }

  showDialogBoxImagePickingAndCapturing()
  {
    return showDialog(
      context: context,
      builder: (context)
      {
        return SimpleDialog(
          backgroundColor: Colors.black87,
          title: const Text(
            "Item Image",
            style: TextStyle(
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold,
            ),
          ),
          children: [
            SimpleDialogOption(
              onPressed: ()
              {
                captureImageWithPhoneCamera();
              },
              child: const Text(
                "capture with Phone Camera",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            SimpleDialogOption(
              onPressed: ()
              {
                pickImageFromGallery();
              },
              child: const Text(
                "Pick Image from phone gallery",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            SimpleDialogOption(
              onPressed: ()
              {
                Get.back();
              },
              child: const Text(
                "cansel",
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
          ],
        );
      }
    );
  }

  Widget defaultScreen()
  {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black54,
                Colors.deepPurple,
              ],
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        title: const Text(
            "Wellcome Admin"
        ),
        centerTitle: true,//remove defolt icon
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black54,
              Colors.deepPurple,
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,//center horizontali
            children: [
              const Icon(
                Icons.add_photo_alternate,
                color: Colors.white54,
                size: 200,
              ),

              //button
              Material(     // loging button create
                color: Colors.black,
                borderRadius: BorderRadius.circular(30),
                child: InkWell(
                  onTap: ()
                  {
                    showDialogBoxImagePickingAndCapturing();
                  },
                  borderRadius: BorderRadius.circular(30),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 28,
                    ),
                    child: Text(
                      "Add New Item",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return defaultScreen();
  }
}
