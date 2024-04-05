import 'package:flutter/material.dart';

void main() {
  runApp(const IjTracker());
}

class IjTracker extends StatelessWidget {
  const IjTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.help,
                color: Colors.white,
              ),
              Row(
                children: [
                  Text(
                    "iJ",
                    style: TextStyle(color: Colors.orange),
                  ),
                  Text(
                    "Tracker",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(Icons.notifications, color: Colors.white),
                  Icon(Icons.settings, color: Colors.white)
                ],
              ),
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          'assets/my_sheep.jpg', 
                          fit: BoxFit.cover,
                          width: 70,
                          height: 70,
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Robert Steven",
                            style: TextStyle(fontSize: 20),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.car_rental,
                                color: Colors.blue,
                              ),
                              Text(
                                "B 2255 UJD | 708100100",
                                style: TextStyle(color: Colors.blue),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Text(
                    "Log Out",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 50,
              color: Colors.blue,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Online | Battery 90%",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: GridView.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 0,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Icon(Icons.map),
                          Text("Map"),
                          Text("All Devices")
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Icon(Icons.location_city),
                          Text("Map"),
                          Text("All Devices")
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Icon(Icons.location_history),
                          Text("Map"),
                          Text("All Devices")
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Icon(Icons.details),
                          Text("Information"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Icon(Icons.edit),
                          Text("edit"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Icon(Icons.edit),
                          Text("edit"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Icon(Icons.edit),
                          Text("edit"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Icon(Icons.edit),
                          Text("edit"),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(child: Row(
          children: [
            Container(color: Colors.black26,),
          ],
        ),),
      ),
    );
  }
}