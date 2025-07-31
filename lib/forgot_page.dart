import 'package:flutter/material.dart';

class ForgotPage extends StatelessWidget {
  final TextEditingController userIdController = TextEditingController();
  final TextEditingController otpIdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/pic1.png'),
              fit: BoxFit.cover,
              alignment: Alignment(0.2, 0),
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.8),
                BlendMode.darken,
              ),
            ),
          ),
        ),


        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Stack(
              children: [
                //close button
                Positioned(
                  top:10,
                  right: 16,
                   child:GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      color: Colors.greenAccent,
                      size: 28,
                    ),
                   ),
                   ),

                   //main content
                   Center(
                    child: Container(
                      padding: EdgeInsets.all(30),
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.greenAccent.withOpacity(0.08),
                        borderRadius: BorderRadius.circular(16),
                      ),

                      //ser input
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                //label
                                Text(
                                  'User ID',
                                  style: TextStyle(
                                  color: Colors.greenAccent,
                                  fontSize: 18,
                                  letterSpacing: 2,
                                ),
                              ),
                              SizedBox(width: 20),

                              //input right
                              Expanded(
                                child: TextField(
                                  controller: userIdController,
                                  style: TextStyle(color: Colors.white54),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white.withOpacity(0.2),
                                    hintText: 'email or mobile',
                                    hintStyle: TextStyle(color: Colors.white54),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.greenAccent,
                                        width: 2,
                                        ),
                                    ),
                                  ),
                                ),
                                ),
                              ],
                            ),
                            ),
                            SizedBox(height: 15),

                            //otp label
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'otp',
                                    style: TextStyle(
                                      color: Colors.greenAccent,
                                      fontSize: 18,
                                      letterSpacing: 2,
                                    ),
                                    ),
                                    SizedBox(width: 12),

                                    //otp input section 
                                    Expanded(
                                      child: TextField(
                                        controller: otpIdController,
                                        style: TextStyle(color: Colors.white),
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white.withOpacity(0.2),
                                          hintText: '6 digit',
                                          hintStyle: TextStyle(color: Colors.white54),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(25),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.greenAccent,
                                              width: 2,
                                            ),
                                          ),
                                        ),
                                      ),
                                      ),
                                ],
                              ),
                              ),
                              SizedBox(height: 10),


                        ],
                      ),
                    ),
                   ),
              ],
            ),
            ),
        )
      ],
    );
  }
}
