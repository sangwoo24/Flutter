### 선언
```dart
var name = 'Bob'
String name = 'Bob';
Object name = 'Bob';

// default value
int? count; // null
```
<br>

### late variable
```dart
late int count;
void main() {
    count = 0;
}
```
count 는 전역 변수이기 때문에 non-nullable 이지만, late 를 사용하여 initialize 를 건너뛸 수 있음. 단, 사용되기 전에 초기화 되지 않는다면 runtime error 발생. Swift 의 lazy 라고 생각하면 편함.
<br>

### const & final
```dart
const pi = 3.14;
final name = 'Bob';
```
인스턴스 변수는 final 이 될 수 있지만, const 는 될 수 없다. const 는 상수를 위한 것.
<br>

### built-in types
- Object : Null 을 제외한 Dart 의 모든 superclass.
- Future & Stream : 비 동기 지원에 사용.
- Never : 예외를 발생시키는 함수에 사용됨.
- dynamic : 정적 검사를 비활성화 할 것임을 나타냄. Object 또는 Object? 대신 사용함.

```dart
var y = 10;
num x = 1;
double z = 1;
```
num 은 int 와 double 둘 다 될 수 있다.