import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
import '../config/pallete.dart';
import '../config/styles.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:provider/provider.dart';
import '../data/covid_data.dart';

class StatsScreen extends StatefulWidget {
  @override
  _StatsScreenState createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  int widgetIndex = 0;
  List<Widget> statsWidget = [
    StatsGrid(
      isIndia: true,
    ),
    StatsGrid(
      isIndia: false,
    )
  ];
  
  Future<void> _refreshedProducts(BuildContext context) async {
    await Provider.of<CovidProvider>(context).todaysData();
  }

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
          _buildStatsTabBar(),
          SliverPadding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.0,
            ),
            sliver: SliverToBoxAdapter(
              child: RefreshIndicator(
                onRefresh: () => _refreshedProducts(context),
                child: statsWidget[widgetIndex],
              ),
            ),
          ),
        ],
      ),
    );
  }

  SliverPadding _buildStatsTabBar() {
    return SliverPadding(
      padding: const EdgeInsets.all(20.0),
      sliver: SliverToBoxAdapter(
        child: DefaultTabController(
          length: 3,
          child: TabBar(
            labelStyle: Styles.tabTextStyle,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white60,
            indicatorColor: Colors.transparent,
            tabs: [
              Text(
                'total',
              ),
              Text(
                'yesterday',
              ),
              Text(
                'today',
              ),
            ],
            onTap: (index) {},
          ),
        ),
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
            onTap: (index) {
              setState(() {
                print(index);
                this.widgetIndex = index;
              });
            },
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
