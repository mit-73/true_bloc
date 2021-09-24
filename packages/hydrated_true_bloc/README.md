<p align="center">
  <img src="https://github.com/mit-73/true_bloc/raw/master/docs/assets/hydrated_bloc_logo.png" height="100" alt="Hydrated Bloc">
</p>

<p align="center">
  <a href="https://github.com/mit-73/true_bloc/actions"><img src="https://github.com/mit-73/true_bloc/workflows/build/badge.svg" alt="build"></a>
  <a href="https://codecov.io/gh/mit-73/true_bloc"><img src="https://codecov.io/gh/mit-73/true_bloc/branch/master/graph/badge.svg" alt="codecov"></a>
  <a href="https://github.com/mit-73/true_bloc"><img src="https://img.shields.io/github/stars/mit-73/true_bloc.svg?style=flat&logo=github&colorB=deeppink&label=stars" alt="Star on Github"></a>
  
  <a href="https://flutter.dev/docs/development/data-and-backend/state-mgmt/options#bloc--rx"><img src="https://img.shields.io/badge/flutter-website-deepskyblue.svg" alt="Flutter Website"></a>
  <a href="https://github.com/Solido/awesome-flutter#standard"><img src="https://img.shields.io/badge/awesome-flutter-blue.svg?longCache=true" alt="Awesome Flutter"></a>
  <a href="https://fluttersamples.com"><img src="https://img.shields.io/badge/flutter-samples-teal.svg?longCache=true" alt="Flutter Samples"></a>
  <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/license-MIT-purple.svg" alt="License: MIT"></a>
  
  <a href="https://github.com/mit-73/true_bloc"><img src="https://tinyurl.com/true-bloc" alt="Bloc Library"></a>
</p>

An extension to [package:bloc](https://github.com/mit-73/true_bloc) which automatically persists and restores bloc and cubit states. Built to work with [package:bloc](https://pub.dev/packages/true_bloc).

**Learn more at [mit-73.github.io/true_bloc](https://mit-73.github.io/true_bloc)!**

---

## Overview

`hydrated_bloc` exports a `Storage` interface which means it can work with any storage provider. Out of the box, it comes with its own implementation: `HydratedStorage`.

`HydratedStorage` is built on top of [hive](https://pub.dev/packages/hive) for a platform-agnostic, performant storage layer. See the complete [example](https://github.com/mit-73/true_bloc/blob/master/packages/hydrated_bloc/example) for more details.

## Usage

### Setup `HydratedStorage`

```dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getTemporaryDirectory(),
  );
  runApp(App());
}
```

### Create a HydratedCubit

```dart
class CounterCubit extends HydratedCubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);

  @override
  int fromJson(Map<String, dynamic> json) => json['value'] as int;

  @override
  Map<String, int> toJson(int state) => { 'value': state };
}
```

### Create a HydratedBloc

```dart
enum CounterEvent { increment }

class CounterBloc extends HydratedBloc<CounterEvent, int> {
  CounterBloc() : super(0);

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    switch (event) {
      case CounterEvent.increment:
        yield state + 1;
        break;
    }
  }

  @override
  int fromJson(Map<String, dynamic> json) => json['value'] as int;

  @override
  Map<String, int> toJson(int state) => { 'value': state };
}
```

Now the `CounterCubit` and `CounterBloc` will automatically persist/restore their state. We can increment the counter value, hot restart, kill the app, etc... and the previous state will be retained.

### HydratedMixin

```dart
class CounterCubit extends Cubit<int> with HydratedMixin {
  CounterCubit() : super(0) {
    hydrate();
  }

  void increment() => emit(state + 1);

  @override
  int fromJson(Map<String, dynamic> json) => json['value'] as int;

  @override
  Map<String, int> toJson(int state) => { 'value': state };
}
```

## Custom Storage Directory

Any `storageDirectory` can be used when creating an instance of `HydratedStorage`:

```dart
HydratedBloc.storage = await HydratedStorage.build(
  storageDirectory: await getApplicationDocumentsDirectory(),
);
```

## Custom Hydrated Storage

If the default `HydratedStorage` doesn't meet your needs, you can always implement a custom `Storage` by simply implementing the `Storage` interface and initializing `HydratedBloc` with the custom `Storage`.

```dart
// my_hydrated_storage.dart

class MyHydratedStorage implements Storage {
  @override
  dynamic read(String key) {
    // TODO: implement read
  }

  @override
  Future<void> write(String key, dynamic value) async {
    // TODO: implement write
  }

  @override
  Future<void> delete(String key) async {
    // TODO: implement delete
  }

  @override
  Future<void> clear() async {
    // TODO: implement clear
  }
}
```

```dart
// main.dart

HydratedBloc.storage = MyHydratedStorage();
```

## Dart Versions

- Dart 2: >= 2.12

## Maintainers

- [MiT](https://github.com/mit-73)
