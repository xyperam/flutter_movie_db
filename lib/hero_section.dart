import 'package:flutter/material.dart';

class HeroSection extends StatefulWidget {
  const HeroSection({super.key});

  @override
  State<HeroSection> createState() => _HeroSectionState();
}

class _HeroSectionState extends State<HeroSection> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHight = MediaQuery.of(context).size.height;
    return Container(
        width: screenWidth,
        height: screenHight * 0.4,
        child: Stack(
          children: [
            Container(
              width: screenWidth,
              height: screenHight * 0.4,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/bannersprankle.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: screenWidth,
              height: screenHight * 0.4,
              color: Colors.blue
                  .withOpacity(0.5), // Warna biru dengan transparansi
            ),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 60, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome',
                      style: TextStyle(
                          fontSize: 40, color: Colors.white, height: 1),
                    ),
                    Text(
                      'Millions of movies, TV shows and people to discover. Explore now.',
                      style: TextStyle(
                          fontSize: 25, color: Colors.white, height: 1),
                      // textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ),
            Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 50.0, horizontal: 25.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 12.0),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {
                          // Tambahkan aksi pencarian di sini
                          print('Search button pressed');
                        },
                      ),
                    ),
                  ),
                )),
          ],
        ));
  }
}
