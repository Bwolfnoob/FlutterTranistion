import 'package:flutter/material.dart';

final int animatespeed = 500;

class SlideRight extends PageRouteBuilder {
  final Widget widget;
  SlideRight({this.widget})
      : super(
      pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
        return widget;
      },
      transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
        return new SlideTransition(
          position: new Tween<Offset>(
            begin: const Offset(-1.0, 0.0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      },
    transitionDuration: Duration(milliseconds: animatespeed),);
}

class SlideLeft extends PageRouteBuilder {
  final Widget widget;
  SlideLeft({this.widget})
      : super(
      pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
        return widget;
      },
      transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
        return new SlideTransition(
          position: new Tween<Offset>(
            begin: const Offset(1.0, 0.0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      },
    transitionDuration: Duration(milliseconds: animatespeed),);
}

class SlideUp extends PageRouteBuilder {
  final Widget widget;
  SlideUp({this.widget})
      : super(
      pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
        return widget;
      },
      transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
        return new SlideTransition(
          position: new Tween<Offset>(
            begin: const Offset(0.0, 1.0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      },
    transitionDuration: Duration(milliseconds: animatespeed),);
}

class SlideDown extends PageRouteBuilder {
  final Widget widget;
  SlideDown({this.widget})
      : super(
      pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
        return widget;
      },
      transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
        return new SlideTransition(
          position: new Tween<Offset>(
            begin: const Offset(0.0, -1.0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      },
    transitionDuration: Duration(milliseconds: animatespeed),);
}

class FadeIn extends PageRouteBuilder {
  final Widget widget;
  FadeIn({this.widget})
      : super(
      pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
        return widget;
      },
      transitionsBuilder: (context, animation1, animation2, child) {
        return FadeTransition(
          opacity: Tween<double>(begin: 0.0, end: 2.5).animate(animation1),
          child: child,);
      },
      transitionDuration: Duration(milliseconds: 750),);
}
