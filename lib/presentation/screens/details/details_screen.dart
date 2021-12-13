import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_party/presentation/screens/details/components/party_list.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

List<PartyList> _items = [
  PartyList(
    date_day: "17",
    hour: "19:00 PM",
    imageUrl:
        "https://images.unsplash.com/photo-1533174072545-7a4b6ad7a6c3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGFydHl8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    text: "Bumbershoot 2019",
    date_month: 'SEP',
  ),
  PartyList(
    date_day: "17",
    hour: "19:00 PM",
    imageUrl:
        "https://images.unsplash.com/photo-1496337589254-7e19d01cec44?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHBhcnR5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    text: "Bumbershoot 2019",
    date_month: 'SEP',
  ),
  PartyList(
    date_day: "30",
    hour: "20:00 PM",
    imageUrl:
        "https://images.unsplash.com/photo-1533174072545-7a4b6ad7a6c3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGFydHl8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    text: "Pumpernikiel 2019",
    date_month: 'JAN',
  ),
  PartyList(
    date_day: "20",
    hour: "21:00 PM",
    imageUrl:
        "https://images.unsplash.com/photo-1536940385103-c729049165e6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHBhcnR5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    text: "Bumbershoot 2019",
    date_month: 'SEP',
  ),
];

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          actions: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    width: 55,
                    margin: const EdgeInsets.only(right: 20, top: 5),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1639230464573-a1bae9ff0996?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 20,
                  child: Container(
                    height: 20,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    width: 20,
                    child: Container(
                      margin: const EdgeInsets.all(4),
                      height: 5,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.red),
                    ),
                  ),
                )
              ],
            ),
          ],
          iconTheme: const IconThemeData(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, top: 5, right: 30),
          child: Column(
            children: [
             const SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  border: InputBorder.none,
                  hintText: 'Search Event',
                  hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
             const SizedBox(
                height: 30,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.65,
                width: MediaQuery.of(context).size.height * 0.5,
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return const Divider(color: Colors.white);
                  },
                  itemCount: _items.length,
                  itemBuilder: (context, int index) {
                    return Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: SizedBox(
                            height: 160,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 20,
                                  child: Text(
                                    _items[index].date_day,
                                    style: const TextStyle(
                                      color: Colors.lightBlue,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 35,
                                  left: 15,
                                  child: Text(
                                    _items[index].date_month,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.network(
                                  _items[index].imageUrl,
                                ),
                              ),
                              Positioned(
                                top: 70,
                                left: 20,
                                child: SizedBox(
                                  width: 200,
                                  child: Text(
                                    _items[index].text,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                top: 135,
                                left: 20,
                                child: Icon(
                                  Icons.watch_later_outlined,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                              Positioned(
                                top: 137,
                                left: 50,
                                child: Text(
                                  _items[index].hour,
                                  style: const TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
