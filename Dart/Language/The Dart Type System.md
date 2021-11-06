# The Dart Type System
Dart 는 Type Safety 를 지원한다. Dart 의 `Static Analyzer` 를 통해 Compile time 에 Type Error 를 찾을 수 있다.
<br><br>

#### What is Soundness?
Dart 에서 Soundness 는 프로그램이 유효하지 않은 특정 상태에 돌입하는 것을 방지한다. 예를 들어, Expression 의 Static Type 이 String 이라면, run time 에 String Type 만 얻을 수 있다.
- sound type system 은 compile time 에 type error 를 잡을 수 있다.
- 가독성 있는 코드를 생산할 수 있다.
- 유지보수 가능한 코드를 생산한다.