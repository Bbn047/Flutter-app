import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // ✅ Background Image
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/pic1.png',
              ), // Replace with your image path
              fit: BoxFit.cover,
              alignment: Alignment(0.2, 0), // Slight shift to the left
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
                // ✅ Close Button
                Positioned(
                  top: 10,
                  right: 16,
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

                // ✅ Main Content
                Center(
                  child: Container(
                    padding: EdgeInsets.all(30),
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.greenAccent.withOpacity(0.08),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // ✅ Label and Input in Row
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // Label on left
                              Text(
                                'Name',
                                style: TextStyle(
                                  color: Colors.greenAccent,
                                  fontSize: 18,
                                  letterSpacing: 2,
                                ),
                              ),
                              SizedBox(width: 20),

                              // Input on right
                              Expanded(
                                child: TextField(
                                  controller: nameController,
                                  style: TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white.withOpacity(0.2),
                                    hintText: 'eg. John',
                                    hintStyle: TextStyle(color: Colors.white54),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                      ),
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

                        //password section label left
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Password',
                                style: TextStyle(
                                  color: Colors.greenAccent,
                                  fontSize: 18,
                                  letterSpacing: 2,
                                ),
                              ),
                              SizedBox(width: 15),

                              //password input right
                              Expanded(
                                child: TextField(
                                  controller: nameController,
                                  style: TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white.withOpacity(0.2),
                                    hintText: '1234@',
                                    hintStyle: TextStyle(color: Colors.white54),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                      ),
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
                         SizedBox(height: 5),


                         //forgot paassword
                         Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: (){
                                  //button action
                                },
                                child: Text(
                                  'forgot Password?',
                                  style: TextStyle(color: Colors.blue)
                                  ),
                                ),
                                TextButton(
                                  onPressed: (){
                                  //create account code
                                },
                                child: Text(
                                  'Create New!',
                                  style: TextStyle(color: Colors.greenAccent)
                                ),
                                )
                            ],
                          ),
                          ),
                          SizedBox(height: 30),


                        // ✅ Submit / Continue Button
                        ElevatedButton(
                          onPressed: () {
                            // Add your action or navigation here
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(147, 141, 141, 100).withOpacity(
                              0.5,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 40,
                              vertical: 15,
                            ),
                          ),
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              letterSpacing: 3,
                            ),
                          ),
                        ),
                      ],
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
