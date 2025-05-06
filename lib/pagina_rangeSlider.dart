import 'package:flutter/material.dart';

class RangeSliderExam extends StatefulWidget {
  const RangeSliderExam({Key? key}) : super(key: key);

  @override
  State<RangeSliderExam> createState() => _RangeSliderExamState();
}

class _RangeSliderExamState extends State<RangeSliderExam> {
  RangeValues rangeValues = const RangeValues(0.1, 0.5);
  @override
  Widget build(BuildContext context) {
    RangeLabels rangeLabels = RangeLabels(
      rangeValues.start.toString(),
      rangeValues.end.toString(),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('RangeSlider'),
      ),
      body: Center(
        child: RangeSlider(
          values: rangeValues,
          divisions: 8,
          labels: rangeLabels,
          onChanged: (newValues) {
            setState(() {
              rangeValues = newValues;
            });
          },
        ),
      ),
    );
  }
}
