import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:upllabs/homepage.dart';
import 'package:upllabs/sliderContent.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int selectedSlider = 0;

  PageController _pageController = PageController();

  //Slider
  List<Map<String, String>> sliders = [
    {
      "image": "images/on1.jpeg",
      "title": "Perfect Healthcare \n Solution",
      "text": "Find a specialist that you only\n need an consulting application"
    },
    {
      "image": "images/on2.jpeg",
      "title": "Perfect Healthcare \n Solution",
      "text": "Find a specialist that you only\n need an consulting application"
    },
    {
      "image": "images/on3.jpeg",
      "title": "Perfect Healthcare \n Solution",
      "text": "Find a specialist that you only\n need an consulting application"
    }

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height /1.4,
                child: PageView.builder(
                  onPageChanged: (index){
                    setState(() {
                      selectedSlider = index;
                    });
                  },
                  controller: _pageController,
                  itemCount: sliders.length,
                  itemBuilder: (context, index) =>
                      SliderContent(
                        image: sliders[index]['image'] as String,
                        title: sliders[index]['title'] as String,
                        text: sliders[index]['text'] as String,),
                ),
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        sliders.length, (index) => buildSliderNav(index: index)),
                  ),
                ],

              ),
              SizedBox(height: 40.0,),
              Padding(
                padding: EdgeInsets.all(0),
                child:selectedSlider == 2 ?

                Align(
                  alignment: Alignment.bottomCenter,
                    child: OnboardButton()) : null,
              ),
            ],
          ),

        ),
      ),
    );

  }


  AnimatedContainer buildSliderNav({required int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5),
      height: 5,
      width: 15,
      decoration: BoxDecoration(
          color: selectedSlider == index ? Color(0xff363cc0) : Color.fromRGBO(230, 230, 230, 1),
          borderRadius: BorderRadius.circular(5)
      ),
    );
  }
}
class OnboardButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: ElevatedButton(
          onPressed:(){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            minimumSize:Size(double.infinity, 50),
            primary: Color(0xff000000),
            elevation: 5,
          ),
          child: Text(
            'Get Started',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.white,
            ),
          )
      ),
    );
  }

}

