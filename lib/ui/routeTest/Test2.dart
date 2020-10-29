import 'package:demoest/base/common/commonInsert.dart';
import 'package:demoest/ui/routeTest/Test3.dart';

/// @name：
/// @author qds
/// @date 2020/10/23
class Test2 extends StatefulWidget {
  static const TEST2 = '/test2';

  Test2({Key key}) : super(key: key);

  @override
  State createState() => new Test2State();
}

class Test2State extends State<Test2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).pushNamed(Test3.TEST3);
        },
        child: Text("222222222"),
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