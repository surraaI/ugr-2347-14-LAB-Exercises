import 'package:flutter/material.dart';

void main() {
  runApp(OrderApp());
}

class OrderApp extends StatelessWidget {
  const OrderApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          title: const Text(
            "Order details",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Card(
              
                color: Colors.white,
                child: Column(
                  children: [
                    Card(
                      color: Color.fromARGB(255, 141, 238, 144),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.done,
                              color: Colors.green,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Completed",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                  ),
                                ),
                                Text("Order completed on 24 July 2022"),
                              ],
                            ),
                            Icon(Icons.arrow_forward),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Order ID"),
                          Text("#12431948"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Order date"),
                          Text("14 July 2020"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    const Text(
                      "Ordered Items",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/my_sheep.jpg",
                            width: 100,
                            height: 100,
                          ),
                          
                          const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        
                          children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Blue T-shrt"),
                                Row(
                                  children: [
                                    Text("size: "),
                                    Text(" L", style: TextStyle(fontWeight: FontWeight.bold),)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("price: "),
                                    Text("50\$", style: TextStyle(fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text("color: "),
                                    Text("Yellow", style: TextStyle(fontWeight: FontWeight.bold
                                    ),)
                                  ],
                                ),
                                Row(children: [
                                  Text("Quantity: "),
                                  Text("1", style: TextStyle(fontWeight: FontWeight.bold),)
                                ],
                                )
                              ],),
                          )
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/my_sheep.jpg",
                            width: 100,
                            height: 100,
                          ),
                          
                          const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        
                          children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Blue T-shrt"),
                                Row(
                                  children: [
                                    Text("size: "),
                                    Text(" L", style: TextStyle(fontWeight: FontWeight.bold),)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("price: "),
                                    Text("50\$", style: TextStyle(fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text("color: "),
                                    Text("Yellow", style: TextStyle(fontWeight: FontWeight.bold
                                    ),)
                                  ],
                                ),
                                Row(children: [
                                  Text("Quantity: "),
                                  Text("1", style: TextStyle(fontWeight: FontWeight.bold),)
                                ],
                                )
                              ],),
                          )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(children: [
                      Text("Shopping Information", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Name"),
                          Text("Adam Jon")
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Phone number"),
                          Text("0978934759878345")
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Address"),
                          Text("23423 hjksh 34")
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("shipment"),
                          Text("Economy")
                        ],
                      )
                  ],),
                ),
              ),
              const Card(
                child: Column(children: [
                  Text("Payment information", style: TextStyle(fontSize: 25,
                  fontWeight: FontWeight.bold
                  ),),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text(
                        "Payment method"
                      ),
                      Text("In cash")
                    ],),
                  )
                ],),
              )
            ],
          ),
        ),
      ),
    );
  }
}