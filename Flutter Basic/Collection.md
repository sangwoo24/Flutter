### List
```dart
var list1 = [1,2,3];
var list2 = [0, ...list]; // [0, 1, 2, 3]

var list3;
var list4 = [0, ...?list3]; // [0]
```
spread operator(...) 와 null-aware spread operator(...?) 를 통해 List 를 쉽게 확장할 수 있음.

```dart
/* collection if */
var flag = false;
var list = [
  'one',
  'two',
  if (flag) 'three',
]; // ['one', 'two']

/* collection for */
var numberList = [1,2,3];
var stringList = [
  for (var i in numberList) '$i'
]; // ['1','2','3']
```
<br>

### Maps
```dart
var person = {
  'name': 'sangwoo',
  'age': 27,  
};
```