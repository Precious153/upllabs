import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 450,
                decoration: BoxDecoration(
                  color: Color(0xff363cc0),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.elliptical(250, 100)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.grey
                            ),
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 50,),
                        Text('Details',style:TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Colors.white
                        ),),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Dr.Ronald Richard',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w400
                            ),),
                          SizedBox(height: 5,),
                          Row(
                            children: [

                              Text('Dentist',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400
                                ),),
                              SizedBox(width: 10,),

                              Icon(Icons.star,
                                color: Color(0xffFFD700),),
                              SizedBox(width: 10,),
                              Text('4.9',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400
                                ),),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Text('Visiting Hour',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400
                            ),),
                        SizedBox(height: 10,),
                          Text('(11AM-12PM)',style:TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white
                          ),),
                          SizedBox(height: 10,),
                          Text('Total patient',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400
                            ),),
                          SizedBox(height: 10,),
                          Text('(1200+)',style:TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white
                          ),)
                        ],
                      ),
                    ),
                    ]
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
