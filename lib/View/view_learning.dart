import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:learnchina/Util/util_grade.dart';
import '../ViewModel/vm_learning.dart';

class LearningView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LearningViewState();
}

class LearningViewState extends State<LearningView> {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<LearningViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Learning View'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // 이전 화면으로 돌아가기
          },
        ),
      ),
      body: Container(
        color: Colors.yellow,
        child: Center(
          child: Text(
            "${getGradeName(eGrade.values[viewModel.gradeIndex])} 을 배워봅시다",
            style: const TextStyle(
              color: Colors.black,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
      ),
    );
  }
}