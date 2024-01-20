import 'package:flutter/material.dart';

class MyServicesList extends StatefulWidget {
  const MyServicesList({super.key});

  @override
  State<MyServicesList> createState() => _MyServicesListState();
}

class _MyServicesListState extends State<MyServicesList> {
  List<Map<String, dynamic>> services = [
    {
      "service": "Window Cleaning",
      "description":
          "Clean windows and window\nframes of varioustypes using\nhigh-quality cleaning agents",
      "color": const Color.fromARGB(255, 138, 150, 213)
    },
    {
      "service": "Carpet Dry Cleaning",
      "description":
          "Professionally clean carpets\nusing a dry cleaning method to\nremove dirt and stains",
      "color": Colors.orangeAccent
    },
    {
      "service": "Furniture Dry Cleaning",
      "description":
          "Professionally clean carpets\nusing a dry cleaning method to\nremove dirt and stains",
      "color": const Color.fromARGB(255, 211, 233, 186)
    },
    {"service": "Hit Song", "description": "Heat On", "is_audio": "false"},
    {"service": "Hit Song", "description": "Heat On", "is_audio": "true"},
    {"service": "Hit Song", "description": "Heat On", "is_audio": "false"},
    {"service": "Hit Song", "description": "Heat On", "is_audio": "true"},
    {"service": "Hit Song", "description": "Heat On", "is_audio": "false"},
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: services.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          color: services[index]['color'],
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 2),
            child: ListTile(
                title: Text(services[index]['service'],
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                subtitle: Text(services[index]['description'],
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 12)),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text('from \$100',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12)),
                    const SizedBox(
                      height: 16,
                    ),
                    Expanded(
                      child: OutlinedButton.icon(
                          style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.only(left: 15, right: 15),
                          ),
                          onPressed: () {},
                          icon: const ClipOval(
                              child: Icon(Icons.arrow_right_alt)),
                          label: const Text('Book')),
                    )
                  ],
                )),
          ),
        );
      },
    );
  }
}
