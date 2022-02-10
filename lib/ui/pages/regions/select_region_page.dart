import 'package:arzan/core/models/city_model.dart';
import 'package:arzan/core/style/my_box_decorations.dart';
import 'package:arzan/core/utils/my_router.dart';
import 'package:arzan/ui/pages/main/main_page.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class SelectRegionPage extends StatefulWidget {
  const SelectRegionPage({Key? key}) : super(key: key);

  @override
  _SelectRegionPageState createState() => _SelectRegionPageState();
}

class _SelectRegionPageState extends State<SelectRegionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: MyBoxDecs().gradientBack(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: InkWell(
                      onTap: () => MyRouter().route(context, const TabScreen()),
                      child: Image.asset('assets/images/map.png'))),
              AutoSizeText(
                'Sebitiňizi saýlaň:',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colors.white),
              ),
              const SizedBox(height: 10),
              Expanded(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(
                    mCityModel.length,
                    (index) => CityButton(
                          model: mCityModel[index],
                        )),
              ))
            ],
          )),
    );
  }
}

class CityButton extends StatelessWidget {
  final CityModel model;
  const CityButton({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: model.onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          margin: const EdgeInsets.only(bottom: 10, left: 25, right: 25),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(50)),
          child: Text(
            model.name,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: Colors.grey),
          ),
        ),
      );
}
