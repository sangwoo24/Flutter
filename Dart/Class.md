# Class

Dart 는 Class 와 Mixin 기반의 상속이 있는 객체 지향 언어이다. <br>
`Mixin-based inheritance` 는 모든 Class 가 정확히 하나의 SuperClass 를 갖지만, Class Body 는 여러 Class 계층에서 사용될 수 있다는 뜻이다.

<br><br>

#### Constructor
```dart
class Point {
    double x = 0;
    double y = 0;

    Point(this.x, this.y);
}
```

<br><br>

#### Mixin
Mixin 은 특정 Class 의 Code 를 **여러 Class 의 계층에서 재 사용할 수 있도록 한다.** `with` 구문과 함께 사용한다.

```dart
class Musician extends Performer with Musical {...}
```
<br>

mixin 을 생성하기 위해서는 mixin 구문과 함께 생성자를 선언하지 않는 Class 의 형태로 코드를 작성한다.
```dart
mixin Musical {
    bool canPianoPlay = false;

    void entertain() {}
}
```

<br>

mixin 을 사용할 수 있는 Type 을 제한할 수 있다.
```dart
class Musician {}

mixin MusicianPerformer on Musician {}

class SingleDancer extends Musician with MusicianPerformer {}
```

mixin `MusicianPerformer` 는 Musician Class 을 extends 하거나 implement 하는 class 에서만 사용할 수 있도록 제한한다. `SingleDancer` 는 Musician Class 를 상속하고 있기에 mixin 을 사용할 수 있다.