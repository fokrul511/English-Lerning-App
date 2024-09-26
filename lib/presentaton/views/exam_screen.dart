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
              SectionHeader(title: "Daily Updates"),
              SizedBox(
                height: 10,
              ),
              _buildDailyCategiroyItems(),
              SizedBox(height: 10),
              SectionHeader(title: "Must Study"),
              SizedBox(height: 10),
              _buildMustStudyItemSection(),
              SizedBox(height: 10),
              SectionHeader(title: "Others Study"),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10),
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
                      offset: Offset(0, 3),
                    )
                  ],
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.add_box_sharp,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "PDF Books and writter",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  SizedBox _buildMustStudyItemSection() {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return exam_must_study_card();
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 10,
          );
        },
        itemCount: 3,
      ),
    );
  }

  Widget _buildDailyCategiroyItems() {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        padding: const EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return ExamDailyUpdateCardItems();
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 10,
          );
        },
      ),
    );
  }
}
