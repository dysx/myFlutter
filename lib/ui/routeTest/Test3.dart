import 'package:demoest/base/common/commonInsert.dart';
import 'package:demoest/ui/routeTest/Test4.dart';

/// @name：
/// @author qds
/// @date 2020/10/23
class Test3 extends StatefulWidget {
  static const TEST3 = '/test3';

  Test3({Key key}) : super(key: key);

  @override
  State createState() => new Test3State();
}

class Test3State extends State<Test3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).pushNamed(Test4.TEST4);
        },
        child: Text("333333333"),
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