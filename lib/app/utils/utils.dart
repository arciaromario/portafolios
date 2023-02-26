import 'package:flutter/material.dart';
import 'package:portafolios/app/sections/contact/contact.dart';
import 'package:portafolios/app/sections/home/home.dart';
import 'package:portafolios/app/sections/portfolio/portfolio.dart';
import 'package:portafolios/app/sections/services/services.dart';
import 'package:portafolios/app/widgets/footer.dart';

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    // About(),
    Services(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}
