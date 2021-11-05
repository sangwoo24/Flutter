# Generic
Generic 은 Type safety 때문에 사용하지만, 사용함에 따라 더 많은 코드의 이점이 생길 수 있다.

- Properly specifying generic types results in better generated code.
- You can use generic to reduce code duplication.

Generic 을 사용하면 많은 Type 들 간에 Single interface 및 Implementation 을 공유할 수 있다.
```dart
abstract class ObjectCache {
    Object getByKey(String key);
    void setByKey(String key, Object value);
}
```
<br>
해당 코드에서 특정 Object(String, Int, List..) 만의 Cache 를 만들기 위해서는 아래와 같이 새로운 interface 를 만들어야 한다.

```dart
abstract class StringCache {
    String getByKey(String key);
    void setByKey(String key, String value);
}
```
<br>

코드의 중복을 방지하기 위해 아래와 같이 Generic 을 사용한다.

```dart
abstract class Cache<T> {
    T getByKey(String key);
    void setByKey(String key, T value);
}
```
<br>

Generic 을 이용해 Class를 특정 Type에만 제한되도록 할 수 있다.
```dart
class Foo<T extends SomeClass> {...}
```