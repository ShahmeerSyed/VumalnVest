import 'package:flutter/material.dart';
import 'package:sliderwithcarousel/bottomsheet.dart';
import 'package:sliderwithcarousel/login.dart';
import 'package:sliderwithcarousel/slide_dots.dart';
import 'package:sliderwithcarousel/slideitem.dart';
import 'package:sliderwithcarousel/slides.dart';
import 'dart:async';

class carouselscreen extends StatefulWidget {
  @override
  _carouselscreenState createState() => _carouselscreenState();
}

class _carouselscreenState extends State<carouselscreen> {
  int _currentpage = 0;
  final PageController _pageController = PageController(initialPage: 0);
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentpage < 3) {
        _currentpage++;
      } else {
        _currentpage = 0;
      }
      _pageController.animateToPage(_currentpage,
          duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentpage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white70,
        child: Column(
          children: <Widget>[
            Expanded(
                child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: <Widget>[
                PageView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: _pageController,
                  onPageChanged: _onPageChanged,
                  itemCount: slidelist.length,
                  itemBuilder: (ctx, i) => slideitem(i),
                ),
                Stack(
                    alignment: AlignmentDirectional.topStart,
                    children: <Widget>[
                      Container(
                          margin: const EdgeInsets.only(bottom: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              for (int i = 0; i < slidelist.length; i++)
                                if (i == _currentpage)
                                  slidedots((true))
                                else
                                  slidedots(false)
                            ],
                          ))
                    ])
              ],
            )
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height / 16,
                    width: MediaQuery.of(context).size.width / 1.07,
                    child: FlatButton(
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            builder: (context) => Container(
                                  padding: EdgeInsets.only(
                                      bottom: MediaQuery.of(context)
                                          .viewInsets
                                          .bottom),
                                  child: bottomsheet(),
                                ));
                      },
                      child: Center(
                        child: Text(
                          'Get Started',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      textColor: Colors.white,
                    ),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Colors.blue[600],
                              Colors.blue,
                              Colors.blue[400]
                            ],
                            begin: Alignment.topLeft,
                            end: FractionalOffset.bottomRight,
                            stops: [0.2, 0.7, 0.9]),
                        borderRadius: BorderRadius.circular(5)),
                  ), //Get Started ka Container
                  SizedBox(height: 10),
                  Container(
                    child: Center(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => loginscreen()),
                          );
                        },
                        child: Text(
                          'Log in',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.blue[500],
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
