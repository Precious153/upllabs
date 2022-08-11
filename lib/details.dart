import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                      color: Color(0xff363cc0),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.elliptical(30, 20),
                          bottomRight: Radius.elliptical(250, 100)),
                        image: DecorationImage(
                            image: AssetImage('images/doctor.jpg',
                            ),
                            alignment:Alignment.bottomRight,
                            scale: 0.9
                        ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 20,),

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
                              SizedBox(height: 10,),
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
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text("Description",style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                      color: Colors.black
                    ),),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Center(
                      child: Text("A dentist, also known as a dental surgeon,\n"
                          " is a health care professional who specializes in \ndentistry"
                          " (the diagnosis, prevention, management, and treatment of diseases"
                          "and conditions of the \noral cavity and other aspects of "
                          "the craniofacial complex including the temporomandibular joint)",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.black
                      ),),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text("Schedule",style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 24,
                            color: Colors.black
                        ),),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Text("<June>",style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color(0xff363cc0)
                        ),),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(width: 20,),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Column(
                              children: [
                                SizedBox(height: 5,),
                                Text('Sat',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400
                                  ),),
                                Text('12',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400
                                  ),),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Column(
                              children: [
                                SizedBox(height: 5,),
                                Text('Sun',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400
                                  ),),
                                Text('13',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400
                                  ),),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(8),
                            color: Color(0xff363cc0),
                          ),
                          child: Center(
                            child: Column(
                              children: [
                                SizedBox(height: 5,),
                                Text('Mon',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400
                                  ),),
                                Text('14',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400
                                  ),),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Column(
                              children: [
                                SizedBox(height: 5,),
                                Text('Tue',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400
                                  ),),
                                Text('15',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400
                                  ),),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Column(
                              children: [
                                SizedBox(height: 5,),
                                Text('Wen',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400
                                  ),),
                                Text('16',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400
                                  ),),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Column(
                              children: [
                                SizedBox(height: 5,),
                                Text('Thur',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400
                                  ),),
                                Text('17',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400
                                  ),),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text("Location",style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                        color: Colors.black
                    ),),
                  ),
                  SizedBox(
                      height: 100,
                      width: 330,
                      child: Image.asset('images/Map.jpg')),
                ],
              ),

          Padding(
            padding: EdgeInsets.only(top:20,left: 20, right: 20, bottom: 40),
            child: ElevatedButton(
                onPressed:(){
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
                  'Book Appointment',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                )
            ),
          ),
            ],
          ),
        ),
      ),
    );
  }
}
