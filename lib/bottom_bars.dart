import 'package:flutter/material.dart';
import 'package:flutter_tutorial/home_screen.dart';

class BottomBars extends StatefulWidget {
  const BottomBars({Key? key}) : super(key: key);

  @override
  State<BottomBars> createState() => _BottomBarsState();
}

class _BottomBarsState extends State<BottomBars> {
  int index = 0;
  final PageStorageBucket _bucket = PageStorageBucket();
  Widget currentScreen = const HomeScreen();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      body: WillPopScope(
        onWillPop: (){
         return Future.value(false);
        },
        child: ScrollConfiguration(
          behavior: ScrollBehavior(),
          child: GlowingOverscrollIndicator(
            axisDirection: AxisDirection.down,
            color: Colors.grey,
            child: PageStorage(
              bucket: _bucket,
              child: currentScreen,
            ),
          ),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        child: BottomAppBar(
          elevation: 0,
          color: Color(0xff2e2b5a),
          shape: CircularNotchedRectangle(),
          child: SizedBox(
            height: 90,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.only(left: 6,right: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(onPressed: (){
                    setState(() {
                      index = 0;
                      currentScreen = const HomeScreen();
                    });
                  },
                  child: Image.asset('assets/images/home.png',color: index==0?
                    Color(0xff871df1):Colors.grey,height: 24,),
                  ),
                  MaterialButton(onPressed: (){
                    setState(() {
                      index = 1;
                      currentScreen = const HomeScreen();
                    });
                  },
                    child: Image.asset('assets/images/passion.png',color: index==1?
                    Color(0xff871df1):Colors.grey,height: 24,),
                  ),
                  MaterialButton(onPressed: (){
                    setState(() {
                      index = 2;
                      currentScreen = const HomeScreen();
                    });
                  },
                    child: Image.asset('assets/images/chat.png',color: index==2?
                    Color(0xff871df1):Colors.grey,height: 24,),
                  ),
                  MaterialButton(onPressed: (){
                    setState(() {
                      index = 3;
                      currentScreen = const HomeScreen();
                    });
                  },
                    child: Image.asset('assets/images/user.png',color: index==3?
                    Color(0xff871df1):Colors.grey,height: 30,),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
