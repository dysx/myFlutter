
import 'package:demoest/base/common/commonInsert.dart';
import 'package:demoest/ui/sliver/SliverDemo.dart';

/// @name：NestedScrollView例子   支持嵌套滑动的scrollview
/// @author qds
/// @date 2020/10/23
class NestedScrollViewDemo extends StatefulWidget {
  static const NESTEDSCROLLVIEWDEMO = '/NestedScrollViewDemo';

  NestedScrollViewDemo({Key key}) : super(key: key);

  @override
  State createState() => new NestedScrollViewDemoState();
}

class NestedScrollViewDemoState extends State<NestedScrollViewDemo> with SingleTickerProviderStateMixin{
  TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context,bool innerBoxIsScrolled){
          return [
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

            ///与tabBar配合使用
            SliverPersistentHeader(
              pinned: true,
              delegate: StickyTabBarDelegate(
                child: TabBar(
                  labelColor: Colors.yellow,
                  controller: this.tabController,
                  tabs: <Widget>[
                    Tab(text: 'Home'),
                    Tab(text: 'Profile'),
                  ],
                )
              ),
            )
          ];
        },
        body: TabBarView(
          controller: this.tabController,
          children: <Widget>[
            EasyRefresh(
              child: Container(
                child: Text("第一个tab"),
              ),
            ),
            EasyRefresh(
              child: Container(
                child: Text("第二个tab"),
              ),
            ),
          ],
        ),
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