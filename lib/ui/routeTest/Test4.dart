import 'package:demoest/base/common/commonInsert.dart';

import 'Test1.dart';

/// @name：
/// @author qds
/// @date 2020/10/23
class Test4 extends StatefulWidget {
  static const TEST4 = "/test4";

  Test4({Key key}) : super(key: key);

  @override
  State createState() => new Test4State();
}

class Test4State extends State<Test4> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: (){
        },
        child: Text("44444444444444"),
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