import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://images.unsplash.com/photo-1533219057257-4bb9ed5d2cc6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 160,
              ),
              const Text(
                "Find the best locations near\nyou for a good night.",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Let us find you an event\nfor your interest",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white.withOpacity(.7),
                ),
              ),
              const SizedBox(
                height: 150,
              ),
              InkWell(
                child: Container(
                  margin: isPortrait
                      ? EdgeInsets.all(0)
                      : EdgeInsets.symmetric(horizontal: 100),
                  padding: isPortrait
                      ? const EdgeInsets.symmetric(horizontal: 35)
                      : const EdgeInsets.symmetric(horizontal: 60),
                  height: isPortrait ? size.height * 0.08 : size.height * 0.2,
                  decoration: const ShapeDecoration(
                      shape: StadiumBorder(), color: Colors.orange),
                  child: Row(
                    children: const [
                      Text(
                        "Find nearest event",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                onTap: () {
                  print('elo');
                },
              ),
              const SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
