import 'package:flutter/material.dart';
import 'package:lunastro_app/core/constants.dart';

class TopicPage extends StatefulWidget {
  const TopicPage({super.key});

  @override
  State<TopicPage> createState() => _TopicPageState();
}

class _TopicPageState extends State<TopicPage> {
  @override
  Widget build(BuildContext context) {
    var whatBringsYou = 'What Brings you';
    var choose = "choose a topic to focuse on";
    return Scaffold(
      body: _Text(whatBringsYou: whatBringsYou, choose: choose),
      

    );
  }
}

class _Text extends StatelessWidget {
  const _Text({
    super.key,
    required this.whatBringsYou,
    required this.choose,
  });

  final String whatBringsYou;
  final String choose;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: projectPadding.symmetricPaddingH,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top:80),
            child: Text(whatBringsYou,style: context.coldMorningTitleLarge,),
          ),
          Text("to Lunastra?",style: context.coldMorningTitleMedium,),
          Padding(
            padding: projectPadding.symmetricPaddingV,
            child: Text(choose, style:context.greatFallsBodyMedium),
          )
        ],
    
      ),
    );
  }
}