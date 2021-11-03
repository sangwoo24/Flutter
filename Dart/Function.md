# Function
<br><br>

## Parameters
- Named parameter 와 Optional positional parameter 가 올 수 있다.
- Flutter Widget 생성자 에서는 필수 매개변수에 대해서도 Named parameter 를 사용한다.
<br><br>

##### Named Parameter
- Named parameter 은 `required` 가 붙지 않는 이상 Optional 하다.

```dart
void enableFlags({bool? bold, bool? hidden}) {...}

// call function
enableFlags(bold: true, hidden: false);
```
<br>

- `required` 가 붙으면 argument 는 필수 조건이 된다.
- Scrollbar 의 parameter 중 child 는 `required` 이므로, Scrollbar 를 생성할 때 child argument 가 없으면 Scrollbar 를 생성할 수 없다.
```dart
const Scrollbar({Key? key, required Widget child})
```

<br><br>

##### Optional Positional Parameter
- parameter 에 [] 를 감싸면 Optional Positional Parameter 로 사용할 수 있다.
```dart
String say(String from, String msg, [String? device]) {...}

// call function
say("sangwoo", "minju")
say("sangwoo", "minju", "iOS 14")
```

<br><br>

##### Default Parameter Value
- named 와 positional parameter 둘 다 parameter 의 default 값을 사용할 수 있다.
- default value 는 compile time 상수이며, default value 가 없을 때는 null 이 된다.
```dart
// named parameter
void enableFlags({bool bold = false, bool hidden = false}) {...}

// positional parameter
String say(String from, String msg, [String device = "iOS 14"]) {...}
```

<br><br>

##### The main() Function
- 모든 App 은 시작점이 되는 main() 함수가 존재한다. main 함수는 `List<String>` 타입의 argument 를 Optional 하게 받는다.

<br><br>

##### Anonymous Function
- lambda 와 closure 같은 익명함수를 만들 수 있다.
```dart
void main() {
    const list = ['apples', 'bananas', 'oranges'];
    list.forEach((item) {
        print('${list.indexOf(item)}: $item');
    });
}
```
- function 이 단일 표현식 또는 return 문만 포함되어 있는 경우, arrow notation 을 사용할 수 있다.
```dart
list.forEach(
    (item) => print('${list.indexOf(item)}: $item'));
```