import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController userIdController = TextEditingController();
  final TextEditingController passwordIdController = TextEditingController();
  final TextEditingController userNameIdController = TextEditingController();

  bool readText = true;
  bool vibration = true;
  bool mic = false;
  bool deviceLocation = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF033D2E),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.play_circle), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              /// Top Card with Circular Progress
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 160,
                      decoration: BoxDecoration(
                        color: Color(0xFF2EE690),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CircularProgressIndicator(
                            value: 0.34,
                            strokeWidth: 8,
                            valueColor: AlwaysStoppedAnimation(Colors.white),
                            backgroundColor: Colors.white24,
                          ),
                          Positioned(
                            top: 10,
                            right: 10,
                            child: Row(
                              children: [
                                Icon(Icons.power_settings_new, color: Colors.white),
                                SizedBox(width: 8),
                                Icon(Icons.refresh, color: Colors.white),
                              ],
                            ),
                          ),
                          Text(
                            "34%",
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                          Positioned(
                            bottom: 12,
                            child: Text(
                              "Device Name\nConnected",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white70),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),

              /// Map & Language + Toggles
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Map Placeholder
                  Expanded(
                    flex: 2,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/images/map.png',
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),

                  // Language & Toggles
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        // Language
                        Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            children: const [
                              Text('English', style: TextStyle(color: Colors.white)),
                              Divider(color: Colors.white24),
                              Text('Polish', style: TextStyle(color: Colors.white)),
                              Divider(color: Colors.white24),
                              Text('Hindi', style: TextStyle(color: Colors.white)),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),

                        // Switches
                        SwitchListTile(
                          value: readText,
                          onChanged: (val) => setState(() => readText = val),
                          title: Text("Read text", style: TextStyle(color: Colors.white)),
                        ),
                        SwitchListTile(
                          value: vibration,
                          onChanged: (val) => setState(() => vibration = val),
                          title: Text("Vibration", style: TextStyle(color: Colors.white)),
                        ),
                        SwitchListTile(
                          value: mic,
                          onChanged: (val) => setState(() => mic = val),
                          title: Text("Mic", style: TextStyle(color: Colors.white)),
                        ),
                        SwitchListTile(
                          value: deviceLocation,
                          onChanged: (val) => setState(() => deviceLocation = val),
                          title: Text("Device Location", style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),

              /// Device List + Mic
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Mobile Devices", style: TextStyle(color: Colors.white)),
                          SizedBox(height: 6),
                          for (var device in ["Dad", "Mom", "Grandma", "Sister"])
                            Row(
                              children: [
                                Icon(Icons.circle, size: 10, color: Colors.greenAccent),
                                SizedBox(width: 6),
                                Text(device, style: TextStyle(color: Colors.white)),
                              ],
                            ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.white12,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.mic, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
