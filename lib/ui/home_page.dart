import 'package:demoest/base/common/commonInsert.dart';
import 'package:demoest/ui/scrollbar/dra_demo.dart';
import 'package:demoest/ui/scrollbar/scbdemo.dart';
import 'package:demoest/ui/scrollbar/scroll_bar.dart';
import 'package:demoest/ui/sliver/CustomScrollView%20.dart';
import 'package:demoest/ui/sliver/NestedScrollViewDemo.dart';
import 'package:demoest/ui/sliver/SliverDemo.dart';


/// @name：
/// @author qds
/// @date 2020/10/23
class Home extends StatefulWidget {
  static const HOME = "/Home";

  Home({Key key}) : super(key: key);

  @override
  State createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: EasyRefresh(
          child: Container(
            color: MyColors.white,
            child: Wrap(
              direction: Axis.horizontal,
              spacing: 10,
              alignment: WrapAlignment.start,
              children: <Widget>[
                FlatButton(
                  color: Colors.yellow,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))
                  ),
                  child: Text("固定顶部tab效果"),
                  onPressed: (){
                    Navigator.of(context).pushNamed(SliverDemo.SLIVERDEMO);
                  },
                ),
                FlatButton(
                  color: Colors.yellow,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))
                  ),
                  child: Text("customscrollview自定义滑动效果"),
                  onPressed: (){
                    Navigator.of(context).pushNamed(CustomScrollViewDemo.CUSTOMSCROLLVIEWDEMO);
                  },
                ),
                FlatButton(
                  color: Colors.yellow,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))
                  ),
                  child: Text("NestedScrollViewDemo例子"),
                  onPressed: (){
                    Navigator.of(context).pushNamed(NestedScrollViewDemo.NESTEDSCROLLVIEWDEMO);
                  },
                ),
                FlatButton(
                  color: Colors.yellow,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))
                  ),
                  child: Text("scrollerbar自定义滚动条例子"),
                  onPressed: (){
                    Navigator.of(context).pushNamed(ScrollBarDemo.SCROLLBARDEMO);
                  },
                ),
                FlatButton(
                  color: Colors.yellow,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))
                  ),
                  child: Text("滚动条滑动监听例子"),
                  onPressed: (){
                    Navigator.of(context).pushNamed(ScbDemo.SCBDEMO);
                  },
                ),
                FlatButton(
                  color: Colors.yellow,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))
                  ),
                  child: Text("拖动滚动条例子"),
                  onPressed: (){
                    Navigator.of(context).pushNamed(DraDemo.DRADEMO);
                  },
                ),
              ],
            ),
          )
      ),
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
}