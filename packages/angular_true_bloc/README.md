<p align="center">
<img src="https://raw.githubusercontent.com/mit-73/true_bloc/master/docs/assets/angular_bloc_logo_full.png" height="100" alt="Angular Bloc Package" />
</p>

<p align="center">
<a href="https://pub.dev/packages/angular_true_bloc"><img src="https://img.shields.io/pub/v/angular_true_bloc.svg" alt="Pub"></a>
<a href="https://github.com/mit-73/true_bloc/actions"><img src="https://github.com/mit-73/true_bloc/workflows/build/badge.svg" alt="build"></a>
<a href="https://codecov.io/gh/mit-73/true_bloc"><img src="https://codecov.io/gh/mit-73/true_bloc/branch/master/graph/badge.svg" alt="codecov"></a>
<a href="https://github.com/mit-73/true_bloc"><img src="https://img.shields.io/github/stars/mit-73/true_bloc.svg?style=flat&logo=github&colorB=deeppink&label=stars" alt="Star on Github"></a>

<a href="https://flutter.dev/docs/development/data-and-backend/state-mgmt/options#bloc--rx"><img src="https://img.shields.io/badge/flutter-website-deepskyblue.svg" alt="Flutter Website"></a>
<a href="https://github.com/Solido/awesome-flutter#standard"><img src="https://img.shields.io/badge/awesome-flutter-blue.svg?longCache=true" alt="Awesome Flutter"></a>
<a href="https://fluttersamples.com"><img src="https://img.shields.io/badge/flutter-samples-teal.svg?longCache=true" alt="Flutter Samples"></a>
<a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/license-MIT-purple.svg" alt="License: MIT"></a>

<a href="https://github.com/mit-73/true_bloc"><img src="https://tinyurl.com/true-bloc" alt="Bloc Library"></a>
</p>

---

A Dart package that helps implement the [BLoC pattern](https://www.didierboelens.com/2018/08/reactive-programming---streams---bloc) in [AngularDart](https://pub.dev/packages/angular). Built to work with [package:bloc](https://pub.dev/packages/true_bloc).

**Learn more at [mit-73.github.io/true_bloc](https://mit-73.github.io/true_bloc)!**

---

## Angular Components

**BlocPipe** is an Angular pipe which helps bind `Bloc` state changes to the presentation layer. `BlocPipe` handles rendering the html element in response to new states. `BlocPipe` is very similar to `AsyncPipe` but is designed specifically for blocs.

## Cubit Usage

Lets take a look at how to use `BlocPipe` to hook up a `CounterPage` html template to a `CounterCubit`.

### `counter_cubit.dart`

```dart
import 'package:bloc/true_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);
  void decrement() => emit(state — 1);
}
```

### `counter_page_component.dart`

```dart
import 'package:angular/angular.dart';
import 'package:angular_bloc/angular_bloc.dart';

import './counter_cubit.dart';

@Component(
  selector: 'counter-page',
  templateUrl: 'counter_page_component.html',
  pipes: [BlocPipe],
)
class CounterPageComponent implements OnInit, OnDestroy {
  late final CounterCubit counterCubit;

  @override
  void ngOnInit() {
    counterCubit = CounterCubit();
  }

  @override
  void ngOnDestroy() {
    counterCubit.close();
  }
}
```

### `counter_page_component.html`

```html
<div>
  <h1>Counter App</h1>
  <h2>Current Count: {{ $pipe.bloc(counterCubit) }}</h2>
  <button (click)="counterCubit.increment()">➕</button>
  <button (click)="counterCubit.decrement()">➖</button>
</div>
```

## Bloc Usage

Lets take a look at how to use `BlocPipe` to hook up a `CounterPage` html template to a `CounterBloc`.

### `counter_bloc.dart`

```dart
import 'dart:async';
import 'package:bloc/true_bloc.dart';

enum CounterEvent { increment, decrement }

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0);

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    switch (event) {
      case CounterEvent.decrement:
        yield state - 1;
        break;
      case CounterEvent.increment:
        yield state + 1;
        break;
    }
  }
}
```

### `counter_page_component.dart`

```dart
import 'package:angular/angular.dart';
import 'package:angular_bloc/angular_bloc.dart';

import './counter_bloc.dart';

@Component(
  selector: 'counter-page',
  templateUrl: 'counter_page_component.html',
  pipes: [BlocPipe],
)
class CounterPageComponent implements OnInit, OnDestroy {
  late final CounterBloc counterBloc;

  @override
  void ngOnInit() {
    counterBloc = CounterBloc();
  }

  @override
  void ngOnDestroy() {
    counterBloc.close();
  }

  void increment() => counterBloc.add(CounterEvent.increment);

  void decrement() => counterBloc.add(CounterEvent.decrement);
}
```

### `counter_page_component.html`

```html
<div>
  <h1>Counter App</h1>
  <h2>Current Count: {{ $pipe.bloc(counterBloc) }}</h2>
  <button (click)="increment()">+</button>
  <button (click)="decrement()">-</button>
</div>
```

At this point we have successfully separated our presentational layer from our business logic layer!

## Dart Versions

- Dart 2: >= 2.12.0

## Examples

- [Counter](https://github.com/mit-73/true_bloc/tree/master/examples/angular_counter) - a complete example of how to create a `CounterBloc` and hook it up to an AngularDart app.
- [Github Search](https://github.com/mit-73/true_bloc/tree/master/examples/github_search/angular_github_search) - an example of how to create a Github Search Application using the `bloc` and `angular_bloc` packages.

## Maintainers

- [MiT](https://github.com/mit-73)
