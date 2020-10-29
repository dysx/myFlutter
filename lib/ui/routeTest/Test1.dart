import 'package:demoest/base/common/commonInsert.dart';
import 'package:demoest/ui/routeTest/Test3.dart';
import 'package:demoest/ui/routeTest/Test4.dart';
import 'package:demoest/ui/sliver/CustomScrollView%20.dart';
import 'package:demoest/ui/sliver/SliverDemo.dart';

import 'Test1.dart';
import 'Test2.dart';

/// @name：
/// @author qds
/// @date 2020/10/23
class Test1 extends StatefulWidget {
  static const TEST1 = "/test1";

  Test1({Key key}) : super(key: key);

  @override
  State createState() => new Test1State();
}

class Test1State extends State<Test1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("123"),
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
                  child: Text("跳转到test2"),
                  onPressed: (){
                    Navigator.of(context).pushNamed(Test2.TEST2);
                  },
                ),
                FlatButton(
                  color: Colors.yellow,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))
                  ),
                  child: Text("跳转到test3"),
                  onPressed: (){
                    Navigator.of(context).pushNamed(Test3.TEST3);
                  },
                ),
                FlatButton(
                  color: Colors.yellow,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))
                  ),
                  child: Text("跳转到test4"),
                  onPressed: (){
                    Navigator.of(context).pushNamed(Test4.TEST4);
                  },
                )
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