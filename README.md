A Flutter package that offers a smooth fading animation while loading on the screen to any widget of your choice!<br><br>

<img width=350 src="https://user-images.githubusercontent.com/77121931/170860275-6ab7e7f5-5f1d-45e2-aed8-e75aa03bf615.gif" />

## Features

This package comes with easy to use parameters which makes it really easy to implement and makes your application look more great!

<br>

Parameters for FadingWidgetAnimator Widget 

<br>

|All you can set parameters|What they mean|Default|
|:-------------------------:|:------------:|:-----:|
|child|Widget that you want to add animation to|It's a required parameter, hence no default value|
|duration|Duration between the widget being fully invisible to fully opaque|2 seconds|
|startAfter|You control after how much time the animation should start|0 second|
|curve|Curve of the animation w.r.t time|Linear curve|

<br>

## Getting started

Just include this in your pubspec.yaml<br>

```dart
  fading_widget_animation: <VERSION>
```

or run this in your terminal<br>

```dart
  flutter pub add fading_widget_animation
```

<br>

## Usage

To simply get your widget animating, try:

- Import the package in the screen file where you will display the widget

```dart
import 'package:fading_widget_animation/fading_widget_animation.dart';
```

- And, call this widget to show fading animation

```dart
FadingWidgetAnimator(
  //duration is optional, defaults to 2 seconds
  duration: const Duration(seconds: 4),
  //child is marked as required, that means the widget will fail if you don't pass the child
  child: const Text(
    'ta-daaaa!',
    style: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
  ),
  // rest of the arguments are also optional
  // curve: Curves.linear,
  // startAfter lets you control the time after which you want to start the animation
  // you can see a better example of this parameter in the below widget
  // startAfter: const Duration(seconds: 0),
),
```

## Additional information

Hop on to :- [samitkapoor/fading_widget_animation](https://github.com/samitkapoor/fading_widget_animation) to find more information, contribute, file issues regarding the package!
