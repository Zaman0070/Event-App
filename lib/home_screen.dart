import 'package:dismissible_carousel_viewpager/dismissible_carousel_viewpager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/details_screen.dart';
import 'package:show_up_animation/show_up_animation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff081430),
        elevation: 0,
        leading: ShowUpAnimation(
          delayStart: Duration(milliseconds: 200),
          animationDuration: Duration(milliseconds: 200),
          curve: Curves.bounceIn,
          direction: Direction.horizontal,
          offset: 0.5,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset('assets/images/menu.png',color: Colors.white,),
          ),
        ),
        actions: [
          ShowUpAnimation(
            delayStart: Duration(milliseconds: 400),
            animationDuration: Duration(milliseconds: 400),
            curve: Curves.bounceIn,
            direction: Direction.horizontal,
            offset: 0.5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('assets/images/notification.png',color: Colors.white,),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            ShowUpAnimation(
              delayStart: Duration(milliseconds: 600),
              animationDuration: Duration(milliseconds: 600),
              curve: Curves.bounceIn,
              direction: Direction.vertical,
              offset: 0.5,
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff2e2b5a),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search by person',
                    hintStyle: TextStyle(color: Colors.grey),
                    contentPadding: EdgeInsets.only(top: 14),
                    prefixIcon: Icon(Icons.search,color: Colors.grey,),
                  ),
                ),
              )
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ShowUpAnimation(
                      delayStart: Duration(milliseconds: 800),
                      animationDuration: Duration(milliseconds: 800),
                      curve: Curves.bounceIn,
                      direction: Direction.horizontal,
                      offset: 0.5,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xff871df1)
                          ),
                          child: const Center(
                            child: Text('🎸  Musicians',style: TextStyle(
                              color: Colors.white,
                            ),),
                          ),
                        )
                      ),
                    ),
                    ShowUpAnimation(
                      delayStart: Duration(milliseconds: 1000),
                      animationDuration: Duration(milliseconds: 1000),
                      curve: Curves.bounceIn,
                      direction: Direction.horizontal,
                      offset: 0.5,
                      child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            height: 40,
                            width: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xff2e2b5a)
                            ),
                            child: const Center(
                              child: Text('😆  Comedians',style: TextStyle(
                                color: Colors.white,
                              ),),
                            ),
                          )
                      ),
                    ),
                    ShowUpAnimation(
                      delayStart: Duration(milliseconds: 1200),
                      animationDuration: Duration(milliseconds: 1200),
                      curve: Curves.bounceIn,
                      direction: Direction.horizontal,
                      offset: 0.5,
                      child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            height: 40,
                            width: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xff2e2b5a)
                            ),
                            child: const Center(
                              child: Text('🎤  Singing',style: TextStyle(
                                color: Colors.white,
                              ),),
                            ),
                          )
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ShowUpAnimation(
                delayStart: Duration(milliseconds: 1400),
                animationDuration: Duration(milliseconds: 1400),
                curve: Curves.bounceIn,
                direction: Direction.horizontal,
                offset: 0.5,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Best Musicans',style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
                      Text('See all',style: TextStyle(color: Colors.white),)
                    ],
                  ),
                )
            ),
            ShowUpAnimation(
                delayStart: Duration(milliseconds: 1600),
                animationDuration: Duration(milliseconds: 1600),
                curve: Curves.bounceIn,
                direction: Direction.horizontal,
                offset: 0.5,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>DetailsScreen()));
                  },
                  child: Container(
                    height: 350,
                    width: 400,
                    child: DismissibleCarouselViewPager(
                      viewportFraction: 0.8,
                      besidePageScale: 0.9,
                      itemBuilder: (context, index) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset('assets/images/joker.png'),
                        );
                      },
                      itemCount: 100,
                    ),
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
