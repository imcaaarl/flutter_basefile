import 'package:flutter/material.dart';

import '../pages/Login.dart';
import '../pages/Landing.dart';
import '../pages/TaskDetails.dart';
import '../pages/ScheduleDetails.dart';

const String loginRoute = '/';
const String landingRoute = '/landing';
const String taskDetailsRoute = '/taskDetails';
const String scheduleDetailsRoute = '/scheduleDetails';

class Router{
  
   static MaterialPageRoute createPageRoute(route){
      return MaterialPageRoute(builder: (_) => route);
   }

   static Route<dynamic> generateRoute(RouteSettings settings){
       switch (settings.name) {
         case loginRoute:
             return createPageRoute(LoginPage());
         case landingRoute:
             return createPageRoute(LandingPage()); 
         case taskDetailsRoute:
             return createPageRoute(TaskDetailsPage());
         case scheduleDetailsRoute:
             return createPageRoute(ScheduleDetailsPage());
         default:
             return null;
       }
      
   }

}