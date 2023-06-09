import 'package:flutter/material.dart';
import 'package:practice/questions_summary/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {key}) : super(key: key);

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
          child: Column(
        children: summaryData.map(
          (data) {
            return SummaryItem(data);
          },
        ).toList(),
      )),
    );
  }
}
