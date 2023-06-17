import 'package:flutter/material.dart';
import 'package:salonbooking/frontend/signup.dart';

class SliderScreen extends StatefulWidget {
  @override
  _SliderScreenState createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  final List<String> _imagePaths =
   [    'images/bandika2.jpg',  
        'images/shortafro.jpg',   
        'images/boxbraid.jpg',  ];

  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });

    if (_currentPage == _imagePaths.length - 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SignupScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _imagePaths.length,
            onPageChanged: _onPageChanged,
            itemBuilder: (BuildContext context, int index) {
              return Image.asset(
                _imagePaths[index],
                fit: BoxFit.cover,
              );
            },
          ),
          Positioned(
            bottom: 16.0,
            left: 16.0,
            right: 16.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _imagePaths.length,
                (index) => Container(
                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                  width: 8.0,
                  height: 8.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPage == index
                        ? Colors.white
                        : Colors.grey.withOpacity(0.5),
                  ),
                ),
              ),
            ),
          ),
        ],
        
      ),
    );
  }
}
