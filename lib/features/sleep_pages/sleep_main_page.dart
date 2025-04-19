import 'package:flutter/material.dart';
import 'package:lunastro_app/core/constants.dart';
class SleepMainPage extends StatefulWidget {
  const SleepMainPage({super.key});

  @override
  State<SleepMainPage> createState() => _SleepMainPageState();
}

class _SleepMainPageState extends State<SleepMainPage> {
final List<Map<String, dynamic>> _categories = [
    {'icon': Icons.apps, 'label': 'All'},
    {'icon': Icons.favorite_border, 'label': 'My'},
    {'icon': Icons.sentiment_dissatisfied, 'label': 'Anxious'},
    {'icon': Icons.nightlight_round, 'label': 'Sleep'},
    {'icon': Icons.child_care, 'label': 'Kids'},
  ];



  @override
  Widget build(BuildContext context) {
    var assetStarSky = "lib/core/images/star_sky.jpg";
    return Scaffold(backgroundColor: projectColor.KantorBlue,
    body: Column(
      children: [
        Padding(
          padding: projectPadding.toptitlePadding,
          child: Text("Sleep Musics",style: context.breonneBlueTitleLarge,textAlign: TextAlign.center,),
        ),
        Padding(
          padding: projectPadding.symmetricText,
          child: Text(
            "Soothing bedtime stories to help you fall into a deep and natural sleep",
            style: context.breonneBlueBodyLarge,
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: projectPadding.symmetricPaddingV,
          child: CategoryBar(categories: _categories, selectedCategory: 'All'),
        ),
        Padding(
          padding: projectPadding.symmetricPaddingV,
          child: OceanContainer(assetStarSky: assetStarSky),
        )
      ],
    ),);
  }
}

class OceanContainer extends StatelessWidget {
  const OceanContainer({
    super.key,
    required this.assetStarSky,
  });

  final String assetStarSky;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 233,
      width: 373.6,
      decoration: BoxDecoration(
        image: DecorationImage(
          image:AssetImage(assetStarSky),
          fit: BoxFit.fill )
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 60),
            child: Text("The Ocean Moon",style: context.creamyApricotTitle2xLarge,),
          ),
          Padding(
            padding: projectPadding.symmetricPaddingH,
            child: Text("Non-stop 8- hour mixes of our most popular sleep audio",style: context.coldMorningBodyLarge,textAlign: TextAlign.center,),
          ),
          Padding(
            padding: projectPadding.symmetricPaddingV,
            child: ElevatedButton(onPressed: () {}, child: Text("START",selectionColor: projectColor.Intellectual,)),
          )
        ],
      ),
    );
  }
}


class CategoryBar extends StatelessWidget {
  final List<Map<String, dynamic>> categories;
  final String selectedCategory;

  const CategoryBar({
    Key? key,
    required this.categories,
    required this.selectedCategory,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: categories.map((category) {
          final bool isSelected = category['label'] == selectedCategory;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: isSelected
                        ? projectColor.PeriwinkleBlue
                        : projectColor.MidnighBlush.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(25),

                  ),
                  padding: const EdgeInsets.all(20),
                  child: Icon(
                    category['icon'],
                    color: isSelected ? projectColor.CloudBreak : projectColor.CloudBreak,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  category['label'],
                  style: TextStyle(
                    color: isSelected ? projectColor.CloudBreak : Colors.white,
                    fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
