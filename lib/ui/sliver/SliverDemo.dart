import 'package:demoest/base/common/commonInsert.dart';

/// @name：
/// @author qds
/// @date 2020/10/23
class SliverDemo extends StatefulWidget {
  static const SLIVERDEMO = '/sliver_demo';

  SliverDemo({Key key}) : super(key: key);

  @override
  State createState() => new SliverDemoState();
}

class SliverDemoState extends State<SliverDemo> with SingleTickerProviderStateMixin{
  TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            elevation: 0,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Sliver-sticky效果'),
              background: Image.network(
                'http://img1.mukewang.com/5c18cf540001ac8206000338.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: StickyTabBarDelegate(
              child: TabBar(
                labelColor: Colors.black,
                controller: this.tabController,
                tabs: <Widget>[
                  Tab(text: 'Home'),
                  Tab(text: 'Profile'),
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            child: TabBarView(
              controller: this.tabController,
              children: <Widget>[
                // EasyRefresh(
                //   child: Center(
                //     child: Text("123"),
                //   ),
                // ),
                Center(child: Text('Content of Profile')),
                Center(child: Text('Content of Profile')),
              ],
            ),
          ),
        ],
      ),
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.tabController = TabController(length: 2,vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}

class StickyTabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar child;

  StickyTabBarDelegate({@required this.child});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return this.child;
  }

  @override
  double get maxExtent => this.child.preferredSize.height;

  @override
  double get minExtent => this.child.preferredSize.height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}