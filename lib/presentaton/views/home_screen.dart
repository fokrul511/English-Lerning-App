import 'package:english_lerning_app/presentaton/dummyData/daily_update_list.dart';
import 'package:english_lerning_app/presentaton/dummyData/must_study_list.dart';
import 'package:english_lerning_app/presentaton/dummyData/tools_list.dart';
import 'package:english_lerning_app/presentaton/widgets/category_item.dart';
import 'package:english_lerning_app/presentaton/widgets/row_category_item.dart';
import 'package:english_lerning_app/presentaton/widgets/section_header.dart';
import 'package:english_lerning_app/presentaton/widgets/tools_category.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionHeader(
                title: 'Daily Updated',
                icons: Icons.arrow_forward,
                ontap: () {},
              ),
              const SizedBox(height: 10),
              _buildCategoryListView(),
              const SizedBox(height: 10),
              SectionHeader(
                title: 'Must Study',
                icons: Icons.arrow_forward,
                ontap: () {},
              ),
              const SizedBox(height: 10),
              _buildRowCategoryItems(),
              const SizedBox(height: 10),
              const SectionHeader(
                title: 'Tools',
              ),
              const SizedBox(height: 10),
              _buildToolsSinglechildScrolView(),
              const SizedBox(height: 10),
              const SectionHeader(
                title: 'Others Study',
              ),
              const SizedBox(height: 10),
              _buildHomeOtherStudySection()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHomeOtherStudySection() {
    return GridView.builder(

      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: toolsList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 19 / 6),
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.all(10),
          height: 80,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 3,
                blurRadius: 5,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child:  Row(
            children: [
              Icon(
                toolsList[index]['icon'],
                size: 40,
              ),
              Text(
               toolsList[index]['title'],
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildToolsSinglechildScrolView() {
    return SizedBox(
      height: 160,
      child: ListView.separated(
        padding: const EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        itemCount: toolsList.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              ToolsCategory(
                title: toolsList[index]['title'],
                icons: toolsList[index]['icon'],
                colors: toolsList[index]['color'],
              )
            ],
          );
        }, separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 15,);
      },
      ),
    );
  }

  Widget _buildRowCategoryItems() {
    return SizedBox(
      height: 85,
      child: ListView.separated(
        padding: const EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        itemCount: mustStudyList.length,
        itemBuilder: (context, index) {
          return RowCategoryaItem(
            title: mustStudyList[index]['title'],
            icons: mustStudyList[index]["icon"],
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 10),
      ),
    );
  }

  Widget _buildCategoryListView() {
    return SizedBox(
      height: 150,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: dailyUpdateList.length,
        itemBuilder: (context, index) {
          return CategoryCardItem(
            title: dailyUpdateList[index]['title'],
            icons: dailyUpdateList[index]['icon'],
            colors: dailyUpdateList[index]['color'],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 8,
          );
        },
      ),
    );
  }
}
