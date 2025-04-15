import 'package:flutter/material.dart';
import 'package:lunastro_app/core/constants.dart';
import 'package:flutter/widgets.dart';
import 'package:lunastro_app/core/widgets.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    var assetYogaPath = "lib/core/images/purple_yoga.jpg";
    var user = "User";
    var exploreTheApp = 'Explore the app, Find some peace of mind to prepare for meditation';
    var hiUserWelcome = 'Hi $user, Welcome';
    return Scaffold(
      body: _pageContainerWidget(assetYogaPath: assetYogaPath, hiUserWelcome: hiUserWelcome, exploreTheApp: exploreTheApp,),
    );
  }
}

class _pageContainerWidget extends StatelessWidget {
  const _pageContainerWidget({
    super.key,
    required this.assetYogaPath,
    required this.hiUserWelcome,
    required this.exploreTheApp,
  });

  final String assetYogaPath;
  final String hiUserWelcome;
  final String exploreTheApp;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(assetYogaPath),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 155),
            child: Column(
              children: [
                Text(
                  "${hiUserWelcome}",
                  style: context.bleachedAlmondTitleLarge
                ),
                Text('to Lunastra',style: context.bleachedAlmondTitleMedium),
                Padding(
                  padding: const EdgeInsets.only(top:15,left: 49,right: 49),
                  child: Text("${exploreTheApp}.",style: context.bleachedAlmondBodyLarge,textAlign: TextAlign.center,),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:450),
            child: projectStadiumButton(buttonText:"GET ST" ,fColor:projectColor.KantorBlue,textStyle: context.bleachedAlmondBodySmall,),
          ),
        ],
      ),
    );
  }
}
