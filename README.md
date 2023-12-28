<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

A simple package that helps in formatting date and time from a given DateTime object.

## Features

Convert Datetime to String with desired format effortlessly.





## Getting started
```dart
flutter pub add format_date

```



## Usage



```dart
import 'package:format_date/format_date.dart';

void main(){
    runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  DateTime currentDateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: [
                Text(
                    FormatDate.formatDate(dateTime: currentDateTime,), //dd-mm-yyyy
                );
                Text(
                    FormatDate.formatDate(dateTime: currentDateTime, format: 'dd/mm'),
                );
                Text(
                    FormatDate.formatTime(dateTime: currentDateTime,), //hh:mm:ss
                );
                Text(
                    FormatDate.formatTime(dateTime: currentDateTime, format: 'hh:mm'),
                );
            ]
        ),
    );
  }
}




```

## Additional information

For more information:
https://github.com/gru786/format_date
