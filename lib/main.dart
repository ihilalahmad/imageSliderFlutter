import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  List<String> imagesList = [
    'https://cdn.pixabay.com/photo/2014/04/13/20/49/cat-323262__340.jpg',
    'https://cdn.pixabay.com/photo/2019/11/08/11/56/cat-4611189__340.jpg',
    'https://cdn.pixabay.com/photo/2021/12/01/18/17/cat-6838844__340.jpg',
    'https://cdn.pixabay.com/photo/2017/07/25/01/22/cat-2536662__340.jpg',
    'https://cdn.pixabay.com/photo/2016/03/28/10/05/kitten-1285341__340.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Slider'),
        ),
        body: Center(
          child: CarouselSlider(
            options: CarouselOptions(
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              autoPlay: true
            ),
            items: imagesList.map((e) => ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                      e,
                    width: 1000,
                    height: 200,
                    fit: BoxFit.cover,
                  )
                ],
              ),
            )).toList(),
          ),
        ),
      ),
    );
  }
}

