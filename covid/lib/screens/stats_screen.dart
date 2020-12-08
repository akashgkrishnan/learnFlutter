import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../config/pallete.dart';
import '../config/styles.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';

class StatsScreen extends StatefulWidget {
  @override
  _StatsScreenState createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.primaryColor,
      appBar: CustomAppBar(),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: [
          _buildHeader(), 
          _buildRegionTab(),
          _buildStatsTabBar()],
      ),
    );
  }

  SliverToBoxAdapter _buildRegionTab() {
    return SliverToBoxAdapter(
      child: DefaultTabController(
        length: 2,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10.0),
          height: 50.0,
          decoration: BoxDecoration(
            color: Colors.white24,
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: TabBar(
            indicator: BubbleTabIndicator(
              indicatorColor: Colors.white,
              tabBarIndicatorSize: TabBarIndicatorSize.tab,
              indicatorHeight: 40.0,
            ),
            labelStyle: Styles.tabTextStyle,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.white,
            tabs: [
              Text('India'),
              Text('World'),
            ],
            onTap: (index) {},
          ),
        ),
      ),
    );
  }

  SliverPadding _buildHeader() {
    return SliverPadding(
      padding: const EdgeInsets.all(20.0),
      sliver: SliverToBoxAdapter(
        child: Text(
          'statistics',
          style: const TextStyle(color: Colors.white, fontSize: 25.0),
        ),
      ),
    );
  }
}
