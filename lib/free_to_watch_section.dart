// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FreeToWatchSection extends StatefulWidget {
  const FreeToWatchSection({super.key});

  @override
  State<FreeToWatchSection> createState() => _FreeToWatchSectionState();
}

class _FreeToWatchSectionState extends State<FreeToWatchSection> {
  String _selectedItem = 'Today';
  List<String> _dropdownItems = ['Today', 'This Week'];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth,
      height: MediaQuery.of(context).size.height * 0.6,
      color: Colors.blue,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: const Text(
                  'Trending',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                width: 100,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                  border: Border.all(width: 2),
                  color: Colors.white,
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                      value: _selectedItem,
                      icon: Center(
                          child: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black,
                      )),
                      elevation: 8,
                      style: TextStyle(color: Colors.black),
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedItem = newValue!;
                        });
                      },
                      items: _dropdownItems
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem(
                            value: value,
                            child: Center(
                              child: Text(
                                value,
                                textAlign: TextAlign.center,
                              ),
                            ));
                      }).toList()),
                ),
              )
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal, //scrolling horizontal
            child: Container(
              padding: EdgeInsets.all(10),
              color: Colors.blue[100],
              child: Wrap(
                children: List.generate(30, (index) {
                  // Membuat banyak konten agar bisa di-scroll
                  return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Container(
                          height: 200,
                          width: 150,
                          color: Colors.blueAccent,
                          child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/bannersprankle.png'),
                                      fit: BoxFit.cover))),
                        ),
                        Text('Judul Film',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        Text('Tanggal Rilis')
                      ]));
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
