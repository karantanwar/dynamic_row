# Dynamic Row

[![pub package](https://img.shields.io/badge/pub-0.0.1-orange.svg)](https://pub.dev/packages/dynamic_row)

A dynamic row widget to show children as a combination of rows and columns depending on screen size
## Installing

```yaml
dependencies:
  dynamic_row: ^0.0.1
```

### Import

```dart
import 'package:dynamic_row/dynamic_row.dart';
```

## How To Use

```dart
DyRow(
    maxWidth: MediaQuery.of(context).size.width * 0.9,
    breakForMedium: 4,
    breakForSmall: 3,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.all(2),
        child: Chip(
          elevation: 0,
          backgroundColor: Colors.grey.shade800,
          label: Text(
            'test 1',
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(2),
        child: Chip(
          elevation: 0,
          backgroundColor: Colors.grey.shade800,
          label: Text(
            'test 2',
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(2),
        child: Chip(
          elevation: 0,
          backgroundColor: Colors.grey.shade800,
          label: Text(
            'test 3',
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(2),
        child: Chip(
          backgroundColor: Colors.grey.shade800,
          label: Text(
            'test 4',
          ),
        ),
      ),
    ],
  ),
```


## Bugs & Requests

If you encounter any bugs feel free to open an issue. Raise a ticket on github for suggestions. Pull request are also welcome.

### Flutter

For help getting started with Flutter, view our online
[documentation](https://flutter.io/).

For help on editing plugin code, view the [documentation](https://flutter.io/platform-plugins/#edit-code).

## License

MIT License

