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
      body:
          Column(
            children: [
              Row(
                children: [
                  _Text(whatBringsYou: whatBringsYou, choose: choose),
                ],
              ),
              Padding(
                padding: projectPadding.symmetricCard,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: projectPadding.symmetricPaddingH,
                      child: InkWell(
                        onTap: () {
                          setState(() {});
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          width: 176,
                          height: 210,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              ),
                            ],
                            image: DecorationImage(
                              image: AssetImage("lib/core/images/purple_yoga.jpg"),
                              fit: BoxFit.cover
                            )
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30)
                                  )
                                ),
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                  "Meditasyon",
                                  style: context.coldMorningTitleMedium,
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: projectPadding.symmetricPaddingH,
                      child: InkWell(
                        onTap: () {
                          setState(() {});
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          width: 176,
                          height: 210,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              ),
                            ],
                            image: DecorationImage(
                              image: AssetImage("lib/core/images/purple_yoga.jpg"),
                              fit: BoxFit.cover
                            )
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30)
                                  )
                                ),
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                  "Yoga",
                                  style: context.coldMorningTitleMedium,
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              
            ],
          ),

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top:80),
          child: Text(whatBringsYou,style: context.blackTitleLarge,),
        ),
        Text("to Lunastra?",style: context.blackTitleMedium,),
        Padding(
          padding: projectPadding.symmetricPaddingV,
          child: Text(choose, style:context.greatFallsBodyMedium),
        )
      ],
        
    );
  }
}