import 'package:flutter/material.dart';

class ForgotPage extends StatelessWidget {
  final TextEditingController userIdController = TextEditingController();
  
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

                //main content
               SingleChildScrollView(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 200,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.greenAccent.withOpacity(0.08),
                        borderRadius: BorderRadius.circular(20),
                      ),

                    

                    //ser input
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        Align(
                          alignment: Alignment.topRight,
                        child:Padding(
                         padding: const EdgeInsets.only(right: 5),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.close,
                              color: Colors.greenAccent,
                              size: 28,
                            ),
                          ),
                        ),
                        ),
                        SizedBox(height: 15),

                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              //label
                              Text(
                                'User ID',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  letterSpacing: 2,
                                ),
                              ),
                              SizedBox(width: 20),

                              //input right
                              Expanded(
                                child: TextField(
                                  controller: userIdController,
                                  style: TextStyle(color: Colors.black),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white.withOpacity(0.8),
                                    hintText: 'Email',
                                    hintStyle: TextStyle(color: Colors.black),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(16),
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

                        //reset link button
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                         child: SizedBox(
                          width: double.infinity,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.symmetric(vertical: 16),
                              backgroundColor: Colors.yellow.withOpacity(0.8),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              )
                            ),
                            onPressed: (){
                            //button logic
                          }, 
                          child: Text(
                            'Send Reset Link',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              letterSpacing: 1,
                            ),
                          ),
                          ),
                         ),
                        ),
                        SizedBox(height: 10),

                        //email link
                      ],
                    ),
                  ),
                ),
                ),

              ],
            ),
          ),
        ),
      ],
    );
  }
}
