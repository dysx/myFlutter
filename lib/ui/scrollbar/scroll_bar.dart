
import 'package:demoest/base/common/commonInsert.dart';

/// @name：
/// @author qds
/// @date 2020/10/23
class ScrollBarDemo extends StatefulWidget {
   static const SCROLLBARDEMO = '/ScrollBarDemo';

  ScrollBarDemo({Key key}) : super(key: key);

  @override
  State createState() => new ScrollBarDemoState();
}

class ScrollBarDemoState extends State<ScrollBarDemo> {

  double _alignmentY = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("滚动条"),
      ),
      body: NotificationListener<ScrollNotification>(
        onNotification: _handleScrollNotification,
        child: Stack(
          alignment: Alignment.topRight,
          children: <Widget>[
            ListView.builder(
              reverse: false,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Container(
                    height: 45,
                    alignment: Alignment.center,
                    child: Text('$index'),
                  ),
                );
              },
              itemCount: 30,
              itemExtent: 50,
            ),
            //滚动条
            Container(
              alignment: Alignment(1, _alignmentY),
              padding: EdgeInsets.only(right: 5),
              child: Container(
                width: 18,
                height: 60,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.blue),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.arrow_drop_up,
                      size: 18,
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 18,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )

    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  bool _handleScrollNotification(ScrollNotification notification) {
    final ScrollMetrics metrics = notification.metrics;
    print('滚动组件最大滚动距离:${metrics.maxScrollExtent}');
    print('当前滚动位置:${metrics.pixels}');

    setState(() {
      _alignmentY = -1 + (metrics.pixels / metrics.maxScrollExtent) * 2;
    });

    return true;
  }
}