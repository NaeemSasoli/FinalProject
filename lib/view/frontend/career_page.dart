import 'package:flutter/material.dart';
import 'package:futurefound/view/frontend/CareerMatchQuizPage.dart';
import 'package:futurefound/view/frontend/PersonalityTestPage.dart';
import 'package:futurefound/view/frontend/SkillsEvaluationPage.dart';
import 'package:futurefound/view/frontend/personality_test.dart';
import 'package:futurefound/view/frontend/skills_evaluation.dart';
import 'package:futurefound/view/frontend/career_match_quiz.dart';
import '../../utility/colors.dart';
import '../../utility/constants.dart';

class CareerPage extends StatelessWidget {
  const CareerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Career Assessment'),
        backgroundColor: AppColors.primary,
      ),
      body: Padding(
        padding: EdgeInsets.all(AppConstants.defaultPadding),
        child: ListView(
          children: [
            _buildAssessmentCard(context, 'Personality Test', const PersonalityTestPage()),
            _buildAssessmentCard(context, 'Skills Evaluation', const SkillsEvaluationPage()),
            _buildAssessmentCard(context, 'Career Match Quiz', const CareerMatchQuizPage()),
          ],
        ),
      ),
    );
  }

  Widget _buildAssessmentCard(BuildContext context, String title, Widget destinationPage) {
    return Card(
      margin: EdgeInsets.only(bottom: 15),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppConstants.defaultRadius),
      ),
      child: ListTile(
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        trailing: Icon(Icons.arrow_forward_ios, color: AppColors.primary),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => destinationPage));
        },
      ),
    );
  }
}
