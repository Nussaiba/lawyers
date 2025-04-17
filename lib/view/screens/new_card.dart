import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Lawyer {
  final String name;
  final String specialization;
  final String image;

  Lawyer({required this.name, required this.specialization, required this.image});
}

class LawyersController extends GetxController {
  final List<Lawyer> lawyers = [
    Lawyer(name: 'محمد أحمد', specialization: 'قانون الأعمال', image: 'assets/images/lawyer.png'),
    Lawyer(name: 'سارة علي', specialization: 'قانون الأسرة', image:'assets/images/lawyer.png'),
    // Add more lawyers as needed
  ];
}


class LawyersGridPage extends StatelessWidget {
  final LawyersController lawyersController = Get.put(LawyersController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('بطاقات المحامين')),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 0.7,
        ),
        itemCount: lawyersController.lawyers.length,
        itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(lawyersController.lawyers[index].image),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        lawyersController.lawyers[index].name,
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      SizedBox(height: 5),
                      Text(
                        lawyersController.lawyers[index].specialization,
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
