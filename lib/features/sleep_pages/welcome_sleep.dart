import 'package:flutter/material.dart';
import 'package:lunastro_app/core/constants.dart';
import 'package:lunastro_app/core/widgets.dart';

class WelcomeSleepPage extends StatelessWidget {
  const WelcomeSleepPage({super.key});

  @override
  Widget build(BuildContext context) {
    var assetSleepBird = "lib/core/images/sleep_bird.jpg";
    
    
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(assetSleepBird),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: projectPadding.topPadding,
            child: Text("Welcome to Sleep",style: context.coldMorningTitleLarge,),
          ),
          Padding(
            padding: projectPadding.symmetricPaddingV,
            child: Text('Explore the new king of sleep. It uses sound and vesualization to create perfect conditions for refreshing sleep.',style: context.coldMorningBodyLarge,textAlign: TextAlign.center,),
          ),
          Padding(
            padding: projectPadding.buttonBottomPadding,
            child: projectStadiumButton(buttonText: "GET STARTED",fColor: projectColor.BleanchedAlmond,  textStyle: context.bleachedAlmondBodyLarge),
          )
        ],
      ),
    );
  }
}