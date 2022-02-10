import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class ImagePickingRow extends StatefulWidget {
  const ImagePickingRow({Key? key}) : super(key: key);

  @override
  State<ImagePickingRow> createState() => _ImagePickingRowState();
}

class _ImagePickingRowState extends State<ImagePickingRow> {
  List<XFile> images = [];
  _imgFromGallery() async {
    try {
      final image = await ImagePicker().pickMultiImage();
      if (image == null) return;

      setState(() {
        for (int i = 1; i <= 5; i++) {
          setState(() => images.add(image[i]));
        }
      });
    } on PlatformException catch (e) {
      print('Failed to pick image: ${e.toString()}');
    }
  }

  _deleteImages() {
    setState(() => images.clear());
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Row(
      children: [
        InkWell(
          onTap: () {
            if (images.length == 5) {
              _deleteImages();
            } else {
              _imgFromGallery();
            }
          },
          child: Container(
              width: _size.width / 8,
              height: _size.height / 16,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                  border: images.length >= 5
                      ? Border.all(color: Colors.grey)
                      : Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(10)),
              child: images.length >= 5
                  ? const Icon(Icons.delete_forever_rounded, color: Colors.grey)
                  : const Icon(Icons.add, color: Colors.green)),
        ),
        images.isNotEmpty
            ? Row(
                children: List.generate(
                  images.length,
                  (index) => Container(
                    width: _size.width / 8,
                    height: _size.height / 16,
                    margin:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                    child:
                        Image.file(File(images[index].path), fit: BoxFit.fill),
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
