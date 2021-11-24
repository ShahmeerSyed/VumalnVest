import 'package:flutter/cupertino.dart';

class slides{
  final String imageUrl;
  final String title;
  final String description;

  slides({
  @required   this.imageUrl,
  @required   this.title,
  @required   this.description
  });
}
final slidelist = [
  slides(
      imageUrl: 'assets/images/one.png',
      title: 'Welcome to Vumalnvest',
      description: 'Start buying and selling hundreds of US stocks like Google, Apple, Facebook and Microsoft with as little as \$20'),
  slides(
      imageUrl: 'assets/images/slider1-dos.png',
      title: 'Unlocks the Global Market',
      description: "Unrestricted access to the massive opportunities in the U.S. stock market - the world's \$30 trillion & making up to 80% of all global investment dollars."),
  slides(
      imageUrl: 'assets/images/slider2-dos.png',
      title: 'Account Protection',
      description: 'We always keep eye on suspicious activity, and member of U.S. SPIC, insured up to \$500,000.'),
  slides(
      imageUrl: 'assets/images/slider3-dos.png',
      title: 'Insanely Easy',
      description: 'We show how tedious and expensive it was to buy and sell stocks listed on the U.S. stock market, so we have made it simple to signup to investment.'),
  ];