import 'package:flutter/material.dart';
import 'package:my_list_app/list_item.dart';

class MyListTestPage extends StatefulWidget {
  const MyListTestPage({super.key});

  @override
  State<MyListTestPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyListTestPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
            child: Text(
          'Home',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          selectionColor: Colors.white,
        )),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Container(
        color: Colors.black,
        child: Column(children: [
          //View All
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Our Offers',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
              ),
              Row(
                children: [
                  Text('View All',
                      style: TextStyle(color: Colors.white, fontSize: 14)),
                  SizedBox(width: 5),
                  Icon(
                    Icons.arrow_right_alt,
                    color: Colors.white,
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          //Horizontal Cards
          SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                      color: const Color.fromARGB(255, 201, 229, 168),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(children: [
                          //Row for Upper Text percent off
                          const Row(
                            children: [
                              Text('Get 5% off',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(width: 100),
                              Row(
                                children: [
                                  Icon(Icons.bolt,
                                      size: 12, color: Colors.black),
                                  Icon(Icons.hourglass_empty,
                                      size: 12, color: Colors.black),
                                  Icon(Icons.alarm,
                                      size: 12, color: Colors.black),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(height: 5),
                          //Row for Lower Text
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Use cleaning services\non a regular basis',
                                style: TextStyle(
                                  fontSize: 8,
                                ),
                              ),
                              const SizedBox(width: 30),
                              OutlinedButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(Icons.arrow_right_alt),
                                  label: const Text('Check it Out'))
                            ],
                          )
                        ]),
                      ));
                },
              )),
          const SizedBox(height: 25),

          //Text for Popular Services
          ListTile(
            title: const Text('Popular Services',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18)),
            trailing: OutlinedButton(
              onPressed: () {},
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('View All',
                      style: TextStyle(color: Colors.white, fontSize: 14)),
                  SizedBox(width: 5),
                  Icon(
                    Icons.arrow_right_alt,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
              child:
                  Container(color: Colors.black, child: const MyServicesList()))
        ]),
      ),
    ));
  }
}
