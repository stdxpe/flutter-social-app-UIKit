import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class S06 extends StatefulWidget {
  static const routeID = 'S06';

  @override
  _S06State createState() => _S06State();
}

class _S06State extends State<S06> {
  File _image;
  final _picker = ImagePicker();

  Future getImageFromFile() async {
    final pickedFile = await _picker.getImage(source: ImageSource.gallery);

    setState(() {
      _image = File(pickedFile.path);
    });
  }

  Future getImageFromCamera() async {
    final pickedFile = await _picker.getImage(source: ImageSource.camera);

    setState(() {
      _image = File(pickedFile.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // bottomNavigationBar: BottomNavBarStandart(),
        //BottomNavBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _image == null
                ? Center(
                    child: Text(
                      'No image selected.',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                : Image.file(_image),
            _image == null
                ? FlatButton(
                    color: Colors.red,
                    onPressed: () {
                      getImageFromCamera();
                    },
                    child: Center(
                      child: Text(
                        'No image selected.',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                : Center(child: Image.file(_image)),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: getImageFromFile,
          child: Icon(Icons.file_download),
        ),
      ),
    );
  }
}
