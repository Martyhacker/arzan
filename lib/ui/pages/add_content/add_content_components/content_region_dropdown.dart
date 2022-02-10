import 'package:flutter/material.dart';
class ContentRegionDropdown extends StatelessWidget {
  const ContentRegionDropdown({
    Key? key  })  : 
        super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      width: _size.width,
      margin: const EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(color: Colors.grey, blurRadius: 5, spreadRadius: .5)
          ]),
      child: const ExpansionTile(
        childrenPadding: const EdgeInsets.all(0),
        tilePadding: const EdgeInsets.all(0),
        iconColor: Colors.transparent,
        collapsedIconColor: Colors.transparent,
        children: [
          ListTile(title: Text('Balkan')),
          ListTile(title: Text('Ahal')),
          ListTile(title: Text('Mary')),
          ListTile(title: Text('Lebap')),
          ListTile(title: Text('Dashoguz')),
          ListTile(title: Text('Asgabat')),
        ],
        title: Text(
          'Sebitinizi saylan',
          textAlign: TextAlign.center,
        ),
      ),
      // child: const AutoSizeText('Ashgabat',
      //     textAlign: TextAlign.center,
      //     minFontSize: 20,
      //     maxLines: 1,
      //     style: TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}