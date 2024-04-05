
import 'package:flutter/material.dart';



void main() {
  runApp(const bardi());
}

class bardi extends StatelessWidget {
  const bardi({super.key});
 
  @override
  Widget build(BuildContext context) {
    var _selectedSize = "XS";
    var selectedColor = "blue";
    void _selectSize(String size) {
    setState(() {
      _selectedSize = size;
    });
  }
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
           title: const Padding(
             padding: EdgeInsets.all(2.0),
             child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Icon(Icons.arrow_back),
              SizedBox(
                width: 150,
                height: 35,
                child: SearchBar(hintText: "search")),
              Icon(Icons.card_travel),
              Icon(Icons.notifications)
             ],
             ),
           ),
           ),
           body:  Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Center(
              child: Stack(
              
                children: [
                  Image.asset("assets/my_sheep.jpg",
                  width: 350,
                  height: 350,),
                  const Positioned(
                    top: 0,
                    left: 20,
                    child: Card(
                      color: Color.fromARGB(255, 89, 167, 231),
                      child: Text("Bardi",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                    ),
                  ),
                  const Positioned(
                    bottom: 0,
                    left: 120,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.people,color: Colors.white,),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.people,color: Colors.white,),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.people,color: Colors.white,),
                        ),
                         Padding(
                           padding: EdgeInsets.all(8.0),
                           child: Icon(Icons.people,color: Colors.white,),
                         ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Column(
              children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$1.6",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),),
                    Icon(Icons.favorite,color: Colors.black54,)
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("BARDI Smart Light Bulb Lamp Bolham LED Wifi ",
                                       ),
                        Text("RGBWWB 12W 12 Watt home IoT"),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star,color: Colors.yellow,),
                        Text("5.0",style: TextStyle(fontWeight: FontWeight.bold),),
                    Text("(364)",style: TextStyle(color: Colors.grey),),
                      ],
                    ),
                    
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("|"),
                    ),
                    Text("540 Sale"),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("|"),
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on),
                        Text("Brooklyne")
                      ],
                    ),
                    
                
                
                    
                  ],
                ),
              )
              ],
            ),
            Container(
              color: const Color.fromARGB(255, 195, 194, 194),
              height: 20,
              child: const Row(
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Variant", style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 20),)
                ]),
            ),
            const Row(
              children: [
                Text(" size: XL"),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                   ChoiceChip(
                        label: const Text('XS'),
                        selected: _selectedSize == 'XS',
                        onSelected: (isSelected) {
              _selectSize('XS');
                        },
                      ),
                      ChoiceChip(
                        label: const Text('S'),
                        selected: _selectedSize == 'S',
                        onSelected: (isSelected) {
              _selectSize('S');
                        },
                      ),
                      ChoiceChip(
                        label: Text('M'),
                        selected: _selectedSize == 'M',
                        onSelected: (isSelected) {
              _selectSize('M');
                        },
                      ),
                      ChoiceChip(
                        label: Text('L'),
                        selected: _selectedSize == 'L',
                        onSelected: (isSelected) {
               _selectSize('L');
                        },
                      ),
                      ChoiceChip(
                        label: Text('XL'),
                        selected: _selectedSize == 'XL',
                        onSelected: (isSelected) {
              _selectSize('XL');
                        },
                      ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("color: blue"),
                ],
              ),
            ),

            Center(
              
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ChoiceChip(
                          label: Text('blue'),
                          selected: selectedColor == 'blue',
                          onSelected: (selectedColor) {
                _selectSize('blue');
                          },
                        ),
                     ChoiceChip(
                          label: const Text('Red'),
                          selected: selectedColor == 'Red',
                          onSelected: (selectedColor) {
                _selectSize('Red');
                          },
                        ),
                        ChoiceChip(
                          label: const Text('White'),
                          selected: selectedColor == 'White',
                          onSelected: (selectedColor) {
                _selectSize('white');
                          },
                        ),
                        ChoiceChip(
                          label: Text('Yellow'),
                          selected: selectedColor == 'Yellow',
                          onSelected: (selectedColor) {
                _selectSize('Yellow');
                          },
                        ),
                        ChoiceChip(
                          label: Text('orange'),
                          selected: selectedColor == 'orange',
                          onSelected: (selectedColor) {
                 _selectSize('orange');
                          },
                        ),
                        
                  ],
                ),
              ),),
              const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.shopping_cart, color: Colors.blue,size: 25,),
                    ),
                    Card(
                      child: Text("Add to shopping cart",
                      style: TextStyle(fontSize: 20),),
                    )
                  ],
                ),
              )
           ],
           )
           
        ),
      );
  }
}

void setState(Null Function() param0) {
}
