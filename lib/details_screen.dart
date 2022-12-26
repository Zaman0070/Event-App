import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar:
      ShowUpAnimation(
          delayStart: Duration(milliseconds: 1200),
          animationDuration: Duration(milliseconds: 1200),
          curve: Curves.bounceIn,
          direction: Direction.horizontal,
          offset: 0.5,
          child: BottomAppBar(
            elevation: 0,
            color: Color(0xff2e2b5a),
            shape: CircularNotchedRectangle(),
            child: SizedBox(
                height: 65,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Correct from',style: TextStyle(color: Colors.grey.shade200),),
                          Text('\$7,600 / hour',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Container(
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Color(0xff781df1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(child: Text('Order a concert',style: TextStyle(color: Colors.white),)),
                      ),
                    ],
                  ),
                )
            ),
          ),
      ),


      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShowUpAnimation(
              delayStart: Duration(milliseconds: 200),
              animationDuration: Duration(milliseconds: 200),
              curve: Curves.bounceIn,
              direction: Direction.vertical,
              offset: 0.5,
              child: Image.asset('assets/images/joker1.png')
          ),
          ShowUpAnimation(
              delayStart: Duration(milliseconds: 400),
              animationDuration: Duration(milliseconds: 400),
              curve: Curves.bounceIn,
              direction: Direction.horizontal,
              offset: 0.5,
              child:Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  height: 65,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Tracks',style: TextStyle(color: Colors.grey.shade200),),
                            SizedBox(height: 6,),
                            Text('22',style: TextStyle(color: Colors.grey.shade200,fontSize: 18),),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Style',style: TextStyle(color: Colors.grey.shade200),),
                            SizedBox(height: 6,),
                            Text('Experimental',style: TextStyle(color: Colors.grey.shade200,fontSize: 18),),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Albums',style: TextStyle(color: Colors.grey.shade200),),
                            SizedBox(height: 6,),
                            Text('6',style: TextStyle(color: Colors.grey.shade200,fontSize: 18),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
          ),
          ShowUpAnimation(
              delayStart:  Duration(milliseconds: 600),
              animationDuration: Duration(milliseconds: 600),
              curve: Curves.bounceIn,
              direction: Direction.horizontal,
              offset: 0.5,
              child:const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text('Band member',style: TextStyle(
                  fontSize: 24,color: Colors.white,fontWeight: FontWeight.bold
                ),)
              )
          ),
          Row(
            children: [
              ShowUpAnimation(
                  delayStart: Duration(milliseconds: 800),
                  animationDuration: Duration(milliseconds: 800),
                  curve: Curves.bounceIn,
                  direction: Direction.horizontal,
                  offset: 0.5,
                  child:Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 160,
                          width: 130,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Image.asset('assets/images/girl.png',fit: BoxFit.fitHeight,)
                        ),
                        SizedBox(height: 6,),
                       const Text('NASTY',style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  )
              ),
              ShowUpAnimation(
                  delayStart: Duration(milliseconds: 1000),
                  animationDuration: Duration(milliseconds: 1000),
                  curve: Curves.bounceIn,
                  direction: Direction.horizontal,
                  offset: 0.5,
                  child:Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        Container(
                            height: 160,
                            width: 130,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0xff461517),
                                  Color(0xff080101),
                                ]
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Image.asset('assets/images/mini.png',fit: BoxFit.fitHeight,)
                        ),
                        SizedBox(height: 6,),
                        const Text('NICK',style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  )
              ),
            ],
          )
        ],
      ),
    );
  }
}
