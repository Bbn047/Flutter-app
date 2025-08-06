import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color darkGreen = Color(0xFF013220);
    final Color lightGreen = Color(0xFF00D084);

    return Scaffold(
      backgroundColor: darkGreen,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: darkGreen,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.play_arrow), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: Column(
            children: [
              // Top section: Device status
              Container(
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: lightGreen,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    // Circular indicator
                    SizedBox(
                      height: 120,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                            width: 90,
                            height: 90,
                            child: CircularProgressIndicator(
                              value: 0.34,
                              strokeWidth: 8,
                              backgroundColor: const Color.fromARGB(255, 0, 20, 1),
                              valueColor: AlwaysStoppedAnimation<Color>(
                                Colors.white,
                              ),
                            ),
                          ),
                          Text(
                            "34%",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 30),
                    Expanded(
                      child: Text(
                        "Device Name\nConnected",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    Column(
                      children: [
                        Icon(Icons.refresh, color: Colors.white, size: 26),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 16),

              // Map and language section
              SizedBox(
                height: 250,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Static map
                    SizedBox(
                      width: 150, // set width for left section
                      height: 250, // set height for map
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          'assets/images/map.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 12),
                    // Right control panel
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Language selector
                          DropdownButtonFormField<String>(
                            dropdownColor: Colors.white,
                            style: TextStyle(color: darkGreen),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            value: "English",
                            items: ["English", "Polish", "Hindi"]
                                .map(
                                  (lang) => DropdownMenuItem(
                                    value: lang,
                                    child: Text(lang),
                                  ),
                                )
                                .toList(),
                            onChanged: (value) {},
                          ),
                          SizedBox(height: 10),
                          _buildToggle("Read text"),
                          _buildToggle("Vibration"),
                          _buildToggle("Music"),
                          _buildToggle("Device Location"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 16),

              // Device list and mic
              Row(
                children: [
                  // Device list
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mobile Devices",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 8),
                        _buildDeviceTile("Dad"),
                        _buildDeviceTile("Mom"),
                        _buildDeviceTile("Brother"),
                        _buildDeviceTile("Sister"),
                      ],
                    ),
                  ),
                  SizedBox(width: 12),
                  // Mic button
                  Expanded(
                    flex: 1,
                    child: CircleAvatar(
                      radius: 32,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.mic, color: darkGreen, size: 28),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildToggle(String label) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: TextStyle(color: Colors.white)),
        Switch(
          value: true,
          onChanged: (val) {},
          activeColor: Colors.greenAccent,
        ),
      ],
    );
  }

  Widget _buildDeviceTile(String name) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 2),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(name, style: TextStyle(color: Colors.white)),
    );
  }
}
