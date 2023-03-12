import 'package:flutter/material.dart';

/* Device Screen Width Functions */
double screenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double screenWidthPercent(double percent,BuildContext context) {
  double result = (percent/100)*screenWidth(context);
  return (result > 0)? result : 0;
}

double screenWidthAdd(double perform,BuildContext context) {
  double result = screenWidth(context) + perform;
  return (result > 0)? result : 0;
}

double screenWidthSub(double perform,BuildContext context) {
  double result = screenWidth(context) - perform;
  return (result > 0)? result : 0;
}

/* Device Screen Height Functions */
double screenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double screenHeightPercent(double percent,BuildContext context) {
  double result = (percent/100)*screenHeight(context);
  return (result > 0)? result : 0;
}

double screenHeightAdd(double perform,BuildContext context) {
  double result = screenHeight(context) + perform;
  return (result > 0)? result : 0;
}

double screenHeightSub(double perform,BuildContext context) {
  double result = screenHeight(context) - perform;
  return (result > 0)? result : 0;
}

/* Device padding */
double paddingTop(BuildContext context) {
  return MediaQuery.of(context).padding.top;
}
double paddingBottom(BuildContext context) {
  return MediaQuery.of(context).padding.bottom;
}
double paddingRight(BuildContext context) {
  return MediaQuery.of(context).padding.right;
}
double paddingLeft(BuildContext context) {
  return MediaQuery.of(context).padding.left;
}

/* Device Orientation */
Orientation deviceOrientation(BuildContext context) {
  return MediaQuery.of(context).orientation;
}

String deviceOrientationString(BuildContext context) {
  return (isInPortrait(context)? "portrait" : "landscape");
}

bool isInPortrait(BuildContext context) {
  return deviceOrientation(context) == Orientation.portrait;
}

bool isInLandscape(BuildContext context) {
  return deviceOrientation(context) == Orientation.landscape;
}

/* Device Brightness */
Brightness platformBrightness(BuildContext context) {
  return MediaQuery.of(context).platformBrightness;
}

/* Device OS preferences */

bool invertedColors(BuildContext context) {
  return MediaQuery.of(context).invertColors;
}


bool alwaysUse24HourFormat(BuildContext context) {
  return MediaQuery.of(context).alwaysUse24HourFormat;
}

bool disableAnimations(BuildContext context) {
  return MediaQuery.of(context).disableAnimations;
}

bool boldText(BuildContext context) {
  return MediaQuery.of(context).boldText;
}

bool highContrast(BuildContext context) {
  return MediaQuery.of(context).highContrast;
}

bool accessibleNavigation(BuildContext context) {
  return MediaQuery.of(context).accessibleNavigation;
}

double textScaleFactor(BuildContext context) {
  return MediaQuery.of(context).textScaleFactor;
}

double devicePixelRatio(BuildContext context) {
  return MediaQuery.of(context).devicePixelRatio;
}

double physicalDepth(BuildContext context) {
  return MediaQuery.of(context).physicalDepth;
}

EdgeInsets systemGestureInsets(BuildContext context) {
  return MediaQuery.of(context).systemGestureInsets;
}

EdgeInsets viewInsets(BuildContext context) {
  return MediaQuery.of(context).viewInsets;
}

EdgeInsets viewPadding(BuildContext context) {
  return MediaQuery.of(context).viewPadding;
}