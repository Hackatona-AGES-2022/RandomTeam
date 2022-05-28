import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:reforco_app/resource/app_strings.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height / 2;
    return MaterialApp(
      title: 'Tela Inicial',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tela Inicial'),
        ),
        body: Container(
            // height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppStrings.images.background),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: [
                _createCarrousel(),
                Flexible(child: _homeListWidget())
              ],
            )),
      ),
    );
  }
}

Widget _createCarrousel() {
  return Container(
      child: CarouselSlider(
          items: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: new Image.asset('assets/port.png'),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: new Image.asset('assets/math.png'),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: new Image.asset('assets/geo.png'),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: new Image.asset('assets/hist.png'),
        )
      ],

          //Slider Container properties
          options: CarouselOptions(
            autoPlay: false,
          )));
}

Widget _homeListWidget() {
  return Container(
    child: ListView(
      children: <Widget>[
        
        Image.asset('assets/exemploa.png',
            height: 90,
            width: 90,
        ),
        SizedBox(height: 10),
        Image.asset('assets/exemplob.png',
            height: 90,
            width: 90,
        ),
        SizedBox(height: 10),
        Image.asset('assets/exemploc.png',
            height: 90,
            width: 90,
        ),
        SizedBox(height: 10),
                Image.asset('assets/exemplod.png',
            height: 90,
            width: 90,
        ),
        SizedBox(height: 10),
                SizedBox(height: 10),
                Image.asset('assets/exemploe.png',
            height: 90,
            width: 90,
        ),
        SizedBox(height: 10),
                SizedBox(height: 10),
                Image.asset('assets/exemplof.png',
            height: 90,
            width: 90,
        ),
        SizedBox(height: 10),
      ],
    ),
  );
}
