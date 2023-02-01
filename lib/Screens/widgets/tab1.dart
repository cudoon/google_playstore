import 'package:flutter/material.dart';
import 'package:flutter_google_play_store/Screens/details_page.dart';
import '/models/data.dart';

class Tab1 extends StatelessWidget {
  const Tab1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recommended for you',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
                Icon(Icons.arrow_forward)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listOfRecoApps.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10, left: 5, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: (() {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => DetailsPage(
                                    image: listOfRecoApps[index].image,
                                    name: listOfRecoApps[index].name,
                                    type: listOfRecoApps[index].type,
                                    rate: listOfRecoApps[index].rate,
                                    download: listOfRecoApps[index].download)));
                          }),
                          child: Card(
                            child: Container(
                              height: 100,
                              width: 100,
                              child: Image.asset(listOfRecoApps[index].image),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(listOfRecoApps[index].name),
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
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Suggested for you',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
                Icon(Icons.arrow_forward)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listOfSugApps.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10, left: 5, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: (() {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => DetailsPage(
                                    image: listOfSugApps[index].image,
                                    name: listOfSugApps[index].name,
                                    type: listOfSugApps[index].type,
                                    rate: listOfSugApps[index].rate,
                                    download: listOfSugApps[index].download)));
                          }),
                          child: Card(
                            child: Container(
                              height: 100,
                              width: 100,
                              child: Image.asset(listOfSugApps[index].image),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(listOfSugApps[index].name),
                        SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            Text(listOfSugApps[index].rate),
                            Icon(
                              Icons.star,
                              size: 16,
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "From the Editore's",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
                Icon(Icons.arrow_forward)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listOfEditApps.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10, left: 5, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          child: Container(
                            height: 100,
                            width: 100,
                            child: Image.asset(listOfEditApps[index].image),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(listOfEditApps[index].name),
                        SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            Text(listOfEditApps[index].rate),
                            Icon(
                              Icons.star,
                              size: 16,
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
