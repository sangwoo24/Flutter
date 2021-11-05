# Asynchrony Support

Dart Library 는 `Future` 와 `Stream` 객체를 반환하는 경우가 많다. 이 두 객체는 비 동기 처리를 도와주는 객체들이다.
`Async` 와 `Await` 을 사용하면, 비 동기 코드를 동기 코드와 유사하도록 작성할 수 있다.
<br><br>

#### Handling Future

완성된 형태의 Future Object 가 필요한 경우에는 두 가지의 방법을 사용할 수 있다.

- async 와 await 의 사용
- Future API 사용

<br>
await 는 반드시 async 함수 내부에서 사용해야 한다. async 함수는 await 을 만나게 되면 Future Object 를 반환하고, await 구문이 완료된 이후 다음 Code 를 수행한다.

```dart
Future<void> checkVersion() async {
    var version = await lookUpVersion();
}
```
<br>

Try, Catch, Finally 를 사용하여 Error 를 쉽고 깔끔하게 처리할 수 있다.

```dart
try {
    version = await lookUpVersion();
} catch (e) {

}
```
<br><br>

#### Handling Stream
Stream 에서 값을 가져오는 방법에는 두 가지의 경우가 있습니다.

- async 을 사용하거나 비 동기 반복문(await for) 을 사용한다.
- Stream API 를 사용한다.

> ! UI Framework 는 끝없는 Event Stream 을 보내기 때문에 await for 를 사용하면 안된다.

<br>

```dart
await for (varOrType identifier in expression) {
    // Stream 이 값을 보낼 때 마다 수행된다.
}
```

##### 실행 순서
1. Stream(expression) 이 값을 내보낼 때 까지 기다린다.
2. 변수가 내보내진 값으로 설정된 상태에서 for loop 의 body 부분을 실행한다.
3. Stream 이 닫힐 때 까지 for loop 구문이 실행된다.
