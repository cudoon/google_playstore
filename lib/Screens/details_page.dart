import 'package:flutter/material.dart';
import '/models/data.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailsPage extends StatelessWidget {
  final String image;
  final String name;
  final String type;
  final String rate;
  final String download;
  const DetailsPage(
      {Key? key,
      required this.image,
      required this.name,
      required this.type,
      required this.rate,
      required this.download})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: (() => Navigator.of(context).pop()),
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          const Icon(Icons.search, color: Colors.black),
          const Icon(Icons.more_vert, color: Colors.black),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 90,
                    width: 90,
                    child: Image.asset(image),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(type)
                    ],
                  ))
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(rate),
                          const Icon(
                            Icons.star,
                            size: 16,
                          )
                        ],
                      ),
                      const Text('98K reviews')
                    ],
                  ),
                  Column(
                    children: [
                      const Icon(Icons.file_download_outlined),
                      const Text('50MB')
                    ],
                  ),
                  Column(
                    children: [Text(download), const Text('Downloads')],
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 40,
                decoration: BoxDecoration(
                    color: const Color(0xFF138661),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                    child: Text(
                  'Install',
                  style: const TextStyle(color: Colors.white),
                )),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listimages.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(3),
                      child: SizedBox(
                        width: 150,
                        child: Image.asset(
                          listimages[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'About this app',
                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                      const Icon(Icons.arrow_forward)
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                      'Find friends, watch live videos, play games & save photos in your social network')
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Data safety',
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                      'Developers can show information here about how their app collects and uses your data. Learn more about data safety')
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Rate this app',
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                  const Text('Tell us what you think'),
                  const SizedBox(
                    height: 8,
                  ),
                  RatingBar.builder(
                    initialRating: 0,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 40,
                    itemPadding: const EdgeInsets.only(right: 34),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {},
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
