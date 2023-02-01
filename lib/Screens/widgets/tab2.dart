import 'package:flutter/material.dart';
import 'package:flutter_google_play_store/models/data.dart';

class Tab2 extends StatelessWidget {
  const Tab2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        children: [
          SizedBox(
            height: 32,
            child: Row(
              children: [
                Container(
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 177, 216, 248)),
                  child: Center(
                      child: Text(
                    'Top Free',
                    style: TextStyle(color: Colors.blue),
                  )),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 0.4, color: Colors.black)),
                  child: Center(
                      child: Text(
                    'Categories',
                  )),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: listOfRecoApps.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 25,
                        child: Text((index + 1).toString()),
                      ),
                      SizedBox(
                          height: 65,
                          width: 65,
                          child: Image.asset(listOfRecoApps[index].image)),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(listOfRecoApps[index].name),
                              SizedBox(
                                height: 3,
                              ),
                              Text(listOfRecoApps[index].type),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                children: [
                                  Text(listOfRecoApps[index].rate),
                                  Icon(
                                    Icons.star,
                                    size: 16,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
