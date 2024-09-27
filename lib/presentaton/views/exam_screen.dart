import 'package:english_lerning_app/presentaton/dummyData/daily_update_list.dart';
import 'package:english_lerning_app/presentaton/dummyData/must_study_list.dart';
import 'package:english_lerning_app/presentaton/dummyData/others_study_list.dart';
import 'package:english_lerning_app/presentaton/widgets/exam_daily_update_card_items.dart';
import 'package:english_lerning_app/presentaton/widgets/exam_must_study_card.dart';
import 'package:english_lerning_app/presentaton/widgets/section_header.dart';
import 'package:flutter/material.dart';

class ExamScreen extends StatelessWidget {
  const ExamScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SectionHeader(title: "Daily Updates"),
              const SizedBox(
                height: 10,
              ),
              _buildDailyCategiroyItems(),
              const SizedBox(height: 10),
              const SectionHeader(title: "Must Study"),
              const SizedBox(height: 10),
              _buildMustStudyItemSection(),
              const SizedBox(height: 10),
              const SectionHeader(title: "Others Study"),
              const SizedBox(height: 10),
              _mustStudyCard()
            ],
          ),
        ),
      ),
    );
  }

  Widget _mustStudyCard() {
    return SizedBox(
      height: 820,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(10),
        itemCount: othersStudyList.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.all(10),
            height: 80,
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 3,
                  spreadRadius: 2,
                  offset: const Offset(0, 3),
                )
              ],
            ),
            child: Row(
              children: [
                Icon(
                  othersStudyList[index]['icon'],
                  size: 30,
                  color: othersStudyList[index]['color'],
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  othersStudyList[index]['title'],
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  SizedBox _buildMustStudyItemSection() {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        itemCount: mustStudyList.length,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return ExamMustStudyCard(
            title: mustStudyList[index]['title'],
            colors: mustStudyList[index]['color'],
            icons: mustStudyList[index]['icon'],
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 10,
          );
        },
      ),
    );
  }

  Widget _buildDailyCategiroyItems() {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        padding: const EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        itemCount: dailyUpdateList.length,
        itemBuilder: (context, index) {
          return ExamDailyUpdateCardItems(
            title: dailyUpdateList[index]['title'],
            icons: dailyUpdateList[index]['icon'],
            colors: dailyUpdateList[index]['color'],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 10,
          );
        },
      ),
    );
  }
}
