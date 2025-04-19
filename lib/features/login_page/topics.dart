import 'package:flutter/material.dart';
import 'package:lunastro_app/core/constants.dart';

class TopicPage extends StatefulWidget {
  const TopicPage({super.key});

  @override
  State<TopicPage> createState() => _TopicPageState();
}

class _TopicPageState extends State<TopicPage> {
  Set<String> selectedTopics = {};

  void _handleTopicSelection(String topic) {
    setState(() {
      if (selectedTopics.contains(topic)) {
        selectedTopics.remove(topic);
      } else {
        selectedTopics.add(topic);
      }
    });
  }

  List<Widget> _buildTopicRows() {
    final topicData = [
      [
        _TopicData("Meditation", "lib/core/images/reduce_stress.png", "Meditation"),
        _TopicData("Improve Performance", "lib/core/images/improve_performance.png", "Performance"),
      ],
      [
        _TopicData("Increase\nHappines", "lib/core/images/happy.png", "Happines"),
        _TopicData("Reduce\nAnxiety", "lib/core/images/anxiety.png", "Reduce Anxiety"),
      ],
      [
        _TopicData("Personal\nGrowth", "lib/core/images/Personal_growth.png", "Personal Growth"),
        _TopicData("Better\nSleep", "lib/core/images/better_sleep.png", "Better Sleep"),
      ],
    ];

    return topicData.map((row) => Row(
      children: row.map((data) => TopicCard(
        title: data.title,
        imagePath: data.imagePath,
        isSelected: selectedTopics.contains(data.topicKey),
        onTap: () => _handleTopicSelection(data.topicKey),
      )).toList(),
    )).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: NextPageButton(),
      body: ListView(
        children: [
          Row(
            children: [
              Padding(
                padding: projectPadding.symmetricPaddingH,
                child: _Text(
                  whatBringsYou: "What Brings you",
                  choose: "choose topics to focuse on",
                ),
              ),
            ],
          ),
          ..._buildTopicRows(),
        ],
      ),
    );
  }
}

class _TopicData {
  final String title;
  final String imagePath;
  final String topicKey;

  _TopicData(this.title, this.imagePath, this.topicKey);
}

class TopicCard extends StatelessWidget {
  const TopicCard({
    super.key,
    required this.title,
    required this.imagePath,
    required this.isSelected,
    required this.onTap,
  });

  final String title;
  final String imagePath;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: projectPadding.symmetricCard,
      child: GestureDetector(
        onTap: () {
          onTap();
        },
        child: TweenAnimationBuilder(
          duration: Duration(milliseconds: 100),
          tween: Tween<double>(begin: 0, end: isSelected ? 1 : 0),
          builder: (context, value, child) {
            return Container(
              width: 176,
              height: 210,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: isSelected 
                      ? projectColor.PeriwinkleBlue.withOpacity(0.5) 
                      : Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: Offset(0, 3),
                  ),
                ],
                border: Border.all(
                  color: Color.lerp(
                    Colors.transparent,
                    projectColor.PeriwinkleBlue,
                    value as double
                  )!,
                  width: 3
                ),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(isSelected ? 0.2 : 0),
                    BlendMode.darken
                  ),
                )
              ),
              child: Stack(
                children: [
                  if (isSelected)
                    Positioned(
                      top: 10,
                      right: 10,
                      child: Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: projectColor.PeriwinkleBlue,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [_buildTitleContainer(context)],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildTitleContainer(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30)
        ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.transparent,
            Colors.black.withOpacity(0.3),
          ],
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: context.coldMorningTitleMediumBold,
        textAlign: TextAlign.center,
      ),
    );
  }
}

class NextPageButton extends StatelessWidget {
  const NextPageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: projectColor.PeriwinkleBlue,
      onPressed: () {
        // Sonraki sayfaya geçiş
      },
      child: Icon(
        Icons.arrow_forward,
        color: projectColor.ColdMorning,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
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
          padding: projectPadding.topPadding,
          child: Text(whatBringsYou, style: context.blackTitleLarge),
        ),
        Text("to Lunastra?", style: context.blackTitleMedium),
        Padding(
          padding: projectPadding.symmetricPaddingV,
          child: Text(choose, style: context.greatFallsBodyMedium),
        )
      ],
    );
  }
}