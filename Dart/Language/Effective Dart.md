# Effective Dart
<br>

### Style

If we use a consistent style across the entire Dart ecosystem, it makes it easier for all of us to learn from and contribute to each others’ code.
<br>

##### Identifiers

Class, enum, typedef, type parameter, extension 은 `UpperCamelCase` 를 사용한다.
```dart
class HttpRequest {}

typedef Predicate<T> = bool Function(T value);

extension MyFancyList<T> on List<T> {...}
```
<br>

Library, Package, Directory, Source File 의 이름은 `LowerCase_with_underscore` 를 사용한다.
```dart
library peg_parser.source_scanner;

import 'file_system.dart';
import 'slider_menu.dart';
```
<br>

Class member, top-level definition, variable, named parameter 는 `LowerCamelCase` 를 사용한다.
```dart
var count = 3;

HttpRequest httpRequest;
```
<br>

Constant variable 은 `LowerCamelCase` 를 사용한다.
```dart
const pi = 3.14;

final urlScheme = RegExp('^([a-z]+):');
```
<br>

Dart 기본 Library 가 최상위에 import 되도록 한다.
```dart
import 'dart:async';

import 'package:bar/bar.dart';
```