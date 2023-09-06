import 'package:flutter/material.dart';
import 'package:project/user/DetailPage.dart';

class PeriodicService extends StatefulWidget {
  const PeriodicService({Key? key}) : super(key: key);

  @override
  State<PeriodicService> createState() => _PeriodicServiceState();
}

class _PeriodicServiceState extends State<PeriodicService> {
  List<String> images = [
    'images/basic.jpg',
    'images/standard.jpg',
  ];

  List<String> names = ['Basic Service', 'Standard Service'];
  List<String> prices = ['3500', '4008'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Services',style: TextStyle(fontSize: 12),),
      ),
      body: ListView.builder(
        itemCount: images.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(images[index]),
                  radius: 30, // Adjust the radius as needed
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      names[index],
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Price: \$${prices[index]}',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                trailing: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DetalPage(),
                      ),
                    );
                  },

                  child: Text('Select'),

                ),
              )
          );
        }
    ),


    );
  }

}
