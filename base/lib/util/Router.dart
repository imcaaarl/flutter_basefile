
import 'package:flutter/material.dart';

import 'package:base/pages/Home.dart';
import 'package:base/pages/Details.dart';

const String homeRoute = "/";
const String detailsRoute = "/details";
const String errorRoute = "/error";

class Router{

   static MaterialPageRoute createRoute(route){
     return MaterialPageRoute(builder: (_) => route);
   }

   static Route<dynamic> generateRoute(RouteSettings settings){
     print(settings);
     switch (settings.name) {
       case homeRoute:
          return createRoute(HomeRoute());
       case detailsRoute:
          return createRoute(DetailsRoute());
       default:
          return createRoute(errorRoute;
     }

   }
}