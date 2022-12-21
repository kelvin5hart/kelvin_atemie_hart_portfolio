import 'package:flutter/material.dart';

class PricingCard extends StatelessWidget {
  const PricingCard({
    Key? key, required this.title, required this.subTitle, required this.price,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final String price;


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        elevation: 1,
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30,),
                  Text(
                    title,
                    style: const TextStyle(
                        color: Colors.blue, fontSize: 25),
                  ),
                  Text(
                    subTitle,
                    style: const TextStyle(
                        color: Colors.grey, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        price,
                        style: const TextStyle(
                            color: Colors.blue, fontSize: 40),
                      ),
                      const Text(
                        "per seat/month",
                        style: TextStyle(
                            color: Colors.grey, fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: Center(
                        child: Text("Get Started"),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const Text(
                    "Lite Includes:",
                    style: TextStyle(
                        color: Colors.grey, fontSize: 25),
                  ),
                  const SizedBox(height: 20,),
                  const Text(
                    "CMS Integration",
                    style: TextStyle(
                        color: Colors.grey, fontSize: 18),
                  ),
                  const Text(
                    "Chat Widget",
                    style: TextStyle(
                        color: Colors.grey, fontSize: 18),
                  ),
                  const Text(
                    "Customer Support",
                    style: TextStyle(
                        color: Colors.grey, fontSize: 18),
                  ),
                  const SizedBox(height: 50,)
                ],
              ),
            ),
            Container(height: 40, width: double.infinity, color: Colors.blue, child: const Center(child: Text("See All Features", style: TextStyle(color: Colors.white),)),),
            const SizedBox(height: 40,)
          ],
        ),
      ),
    );
  }
}