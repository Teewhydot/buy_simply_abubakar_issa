import 'package:flutter/material.dart';

import 'fe_container.dart';
import 'option_widget.dart';

class AnswersWidget extends StatefulWidget {
  const AnswersWidget({super.key});

  @override
  State<AnswersWidget> createState() => _AnswersWidgetState();
}

class _AnswersWidgetState extends State<AnswersWidget> {
  int selectedIndex = -1; // Tracks the selected container index
  final List<String> optionTexts = [
    "The peace in the early mornings",
    "The magical golden hours",
    "Wind-down time after dinners",
    "The serenity past midnight",
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Wrap(
        direction: Axis.horizontal,
        alignment: WrapAlignment.center,
        runSpacing: 12,
        spacing: 12,
        children: List.generate(optionTexts.length, (index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index; // Update the selected index
              });
            },
            child: FEContainer(
              isSelected: selectedIndex == index, // Highlight if selected
              child: Option(
                text: optionTexts[index],
                option: String.fromCharCode(65 + index), // A, B, C, D
                isSelected: selectedIndex == index,
              ),
            ),
          );
        }),
      ),
    );
  }
}
