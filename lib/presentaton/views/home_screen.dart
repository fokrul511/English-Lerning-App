import 'package:english_lerning_app/presentaton/utility/asset_path.dart';
import 'package:english_lerning_app/presentaton/widgets/appBar.dart';
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
    return SizedBox(
      height: 350,
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 10,

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
            child: const Row(
              children: [
                Icon(
                  Icons.add_business,
                  size: 40,
                ),
                Text(
                  "Grammer",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildToolsSinglechildScrolView() {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ToolsCategory(
            title: 'Tranaslate',
            icons: Icons.home,
          ),
          SizedBox(
            width: 20,
          ),
          ToolsCategory(
            title: 'Tranaslate',
            icons: Icons.home,
          ),
          SizedBox(
            width: 20,
          ),
          ToolsCategory(
            title: 'Tranaslate',
            icons: Icons.home,
          ),
          SizedBox(
            width: 20,
          ),
          ToolsCategory(
            title: 'Tranaslate',
            icons: Icons.home,
          ),
        ],
      ),
    );
  }

  Widget _buildRowCategoryItems() {
    return SizedBox(
      height: 70,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const RowCategoryaItem();
        },
        separatorBuilder: (context, index) => const SizedBox(width: 8),
      ),
    );
  }

  Widget _buildCategoryListView() {
    return SizedBox(
      height: 150,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const CategoryCardItem();
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
