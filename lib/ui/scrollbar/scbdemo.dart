
import 'package:demoest/base/common/commonInsert.dart';
import 'package:demoest/ui/scrollbar/widget/scb_scrollbar.dart';

/// @name：
/// @author qds
/// @date 2020/10/23
class ScbDemo extends StatefulWidget {
   static const SCBDEMO = '/ScbDemo';

  ScbDemo({Key key}) : super(key: key);

  @override
  State createState() => new ScbDemoState();
}

class ScbDemoState extends State<ScbDemo> {
  ScrollController controller = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("滚动监听"),
      ),
      body: Container(
        margin: EdgeInsets.only(
          top:15,
        ),
        child: SCBScrollBar(
          scrollBuilder: () {
            return Container(
              child: ListView.builder(
                controller: controller,
                itemCount: 45,
                itemBuilder: (context, index) {
                  return Card(
                    child: Container(
                      height: 45,
                      alignment: Alignment.center,
                      child: Text('$index'),
                    ),
                  );
                },
              ),
            );
          },
        ),
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