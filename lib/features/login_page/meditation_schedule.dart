import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lunastro_app/core/constants.dart';
import 'package:lunastro_app/core/widgets.dart';

class MeditationScheduleScreen extends StatefulWidget {
  @override
  _MeditationScheduleScreenState createState() => _MeditationScheduleScreenState();
}

class _MeditationScheduleScreenState extends State<MeditationScheduleScreen> {
  Duration selectedDuration = Duration(hours: 11, minutes: 30);
  List<String> days = ['SU', 'M', 'T', 'W', 'TH', 'F', 'S'];
  Set<String> selectedDays = {'TH', 'F'};

  @override
  Widget build(BuildContext context) {
    var whatTime = 'What time would you\nlike to meditate?';
    var anyTime = 'Any time you can choose but We recommend\nfirst thing in the morning.';
    var whichDa = 'Which day would you\nlike to meditate';
    var everydayIs = 'Everyday is best, but we recommend picking\nat least five';
    return Scaffold(
      backgroundColor: projectColor.CloudBreak,
      body: SafeArea(
        minimum: projectPadding.symmetricPaddingH,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 32),
            Text('${whatTime}',style: context.blackTitleLarge,),
            SizedBox(height: 8),
            Text('${anyTime}',style: context.greatFallsBodyMedium,),
            SizedBox(height: 24),

            Container(
              decoration: BoxDecoration(
                color: projectColor.BreonneBlue.withOpacity(0.1),
                borderRadius: BorderRadius.circular(16),
              ),
              height: 230,
              child: CupertinoTimerPicker(
                mode: CupertinoTimerPickerMode.hm,
                initialTimerDuration: selectedDuration,
                onTimerDurationChanged: (Duration newDuration) {
                  setState(() {
                    selectedDuration = newDuration;
                  });
                },
              ),
            ),

            SizedBox(height: 32),
            Text('${whichDa}?',style: context.blackTitleLarge,),
            SizedBox(height: 8),
            Text('${everydayIs}.',style: context.greatFallsBodyMedium,
            ),
            SizedBox(height: 16),

            Padding(
              padding: projectPadding.symmetricPaddingV,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: days.map((day) => _buildDayButton(day)).toList(),
              ),
            ),
            Spacer(),

            projectStadiumButton(
              buttonText: 'SAVE',
              bColor: projectColor.PeriwinkleBlue,
              fColor: projectColor.CloudBreak,
              textStyle: context.coldMorningBodyLarge,
            ),

            Center(
              child: TextButton(
                onPressed: () {
                  // No thanks action
                },
                child: Text(
                  'NO THANKS',
                  style: context.blackBodyMedium
                ),
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget _buildDayButton(String day) {
    final bool isSelected = selectedDays.contains(day);
    return GestureDetector(
      onTap: () {
        setState(() {
          if (isSelected) {
            selectedDays.remove(day);
          } else {
            selectedDays.add(day);
          }
        });
      },
      child: Container(
        width: 43,
        height: 43,
        decoration: BoxDecoration(
          color: isSelected ? projectColor.Black : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? projectColor.Black : projectColor.GreatFalls,
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          day,
          style: context.coldMorningTitleSmall.copyWith(
            color: isSelected ? projectColor.CloudBreak : projectColor.Black,
          ),
        ),
      ),
    );
  }
}
