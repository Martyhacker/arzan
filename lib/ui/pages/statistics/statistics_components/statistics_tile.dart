import 'package:arzan/core/constants/palette.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class StatisticTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String stats;
  const StatisticTile(
      {Key? key, required this.icon, required this.title, required this.stats})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Palette.kSoftGreen, borderRadius: BorderRadius.circular(10)),
        child: Icon(icon, color: Colors.white),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(),
          AutoSizeText(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(fontWeight: FontWeight.normal),
          ),
          AutoSizeText(
            stats,
            style: Theme.of(context).textTheme.headline6,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}


// DefaultTabController(
//       length: _kTabs.length,
//       child: Scaffold(
//           appBar: AppBar(
//             backgroundColor: Colors.white,
//             title: const Text('My statistics',
//                 style: TextStyle(color: Colors.black)),
//             automaticallyImplyLeading: false,
//             shape: const RoundedRectangleBorder(
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(15),
//                 bottomRight: Radius.circular(15),
//               ),
//             ),
//             leading: IconButton(
//               icon: Icon(Icons.chevron_left_rounded,
//                   color: Palette.kSoftGreen, size: 40),
//               onPressed: () => Navigator.pop(context),
//             ),
//             bottom: TabBar(
//                 labelColor: Colors.black87,
//                 unselectedLabelColor: Colors.grey,
//                 indicatorWeight: 3,
//                 indicatorSize: TabBarIndicatorSize.tab,
//                 tabs: _kTabs),
//           ),
//           body: TabBarView(children: _kTabPages)),
//     );
//   }