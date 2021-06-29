### Function 
```dart
int multiple(int num) {
    return num * 2
}

multiple(int num) {
    return num * 2
}

multiple(int num) { return num * 2; }

multiple(int num) => num * 2;
```
모두 다 동일한 표현식임.
<br>

```dart
void enableFlags(bool bold, {bool? hidden}) {}
enableFlags(true, hidden: false);

const Scrollbar({Key? key, required Widget child})
```
enableFlags 는 bold 라는 인자를 받고, Optional 하게 hidden 을 받는다. Named Parameter 인 hidden 은 이름을 명시해준다. Parameter 를 Optional 하게 줄 수 있다. 꼭 필요한 항목에는 **required** 를 붙혀준다.