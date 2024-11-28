# flutter_quiz_app

A simple Flutter app that allows users to take a quiz. The app was done as part of a Udemy course on Flutter.

## Functionality
* Questions are added via a file in `/lib/data` folder
* Answer positions are randomized every try
* Upon quiz completion, results are displayed. A user can restart the quiz

## Installation
* Prerequisites (a significant number): Android Studio, Android SDK, Android SDK Tools, NDK, Android SDK Command Line Tools, CMake, Adroid Emulator, JDK, git, VS Code Dart and Flutter plugins
* Use `flutter doctor -v` to check whether all requirements are met
* Clone the repo. Bette to kep the original name (otherwise you need to edit imports)
* Run `flutter pub get` to install all dependencies
* Execute `flutter run` to launch the app

## Demo
<p align="center">
  <img src="https://github.com/baltsaros/flutter_quiz_app/blob/main/quiz_demo.gif" height="600" alt="Quiz demo">
</p>

## Links
* [Udemy coures](https://campus19.udemy.com/course/learn-flutter-dart-to-build-ios-android-apps/)

## Notes
* In the questions data file, each question contains four possible answers. The correct answer always goes first to simplify result calculation