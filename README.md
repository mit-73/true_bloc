<p align="center">
<img src="https://raw.githubusercontent.com/mit-73/true_bloc/master/docs/assets/bloc_logo_full.png" height="100" alt="Bloc" />
</p>

<p align="center">
<a href="https://github.com/mit-73/true_bloc/actions"><img src="https://github.com/mit-73/true_bloc/workflows/build/badge.svg" alt="build"></a>
<a href="https://codecov.io/gh/mit-73/true_bloc"><img src="https://codecov.io/gh/mit-73/true_bloc/branch/master/graph/badge.svg" alt="codecov"></a>
<a href="https://github.com/mit-73/true_bloc"><img src="https://img.shields.io/github/stars/mit-73/true_bloc.svg?style=flat&logo=github&colorB=deeppink&label=stars" alt="Star on Github"></a>

<a href="https://flutter.dev/docs/development/data-and-backend/state-mgmt/options#bloc--rx"><img src="https://img.shields.io/badge/flutter-website-deepskyblue.svg" alt="Flutter Website"></a>
<a href="https://github.com/Solido/awesome-flutter#standard"><img src="https://img.shields.io/badge/awesome-flutter-blue.svg?longCache=true" alt="Awesome Flutter"></a>

<a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/license-MIT-purple.svg" alt="License: MIT"></a>

<a href="https://github.com/mit-73/true_bloc"><img src="https://tinyurl.com/true-bloc" alt="Bloc Library"></a>
</p>

---

A predictable state management library that helps implement the [BLoC design pattern](https://www.didierboelens.com/2018/08/reactive-programming---streams---bloc).

| Package                                                                              | Pub                                                                                                      |
| ------------------------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------------- |
| [bloc](https://github.com/mit-73/true_bloc/tree/master/packages/true_bloc)                   | [![pub package](https://img.shields.io/pub/v/true_bloc.svg)](https://pub.dev/packages/true_bloc)                   |
| [bloc_test](https://github.com/mit-73/true_bloc/tree/master/packages/true_bloc_test)         | [![pub package](https://img.shields.io/pub/v/true_bloc_test.svg)](https://pub.dev/packages/true_bloc_test)         |
| [flutter_bloc](https://github.com/mit-73/true_bloc/tree/master/packages/flutter_true_bloc)   | [![pub package](https://img.shields.io/pub/v/flutter_true_bloc.svg)](https://pub.dev/packages/flutter_true_bloc)   |
| [angular_bloc](https://github.com/mit-73/true_bloc/tree/master/packages/angular_true_bloc)   | [![pub package](https://img.shields.io/pub/v/angular_true_bloc.svg)](https://pub.dev/packages/angular_true_bloc)   |
| [hydrated_bloc](https://github.com/mit-73/true_bloc/tree/master/packages/hydrated_true_bloc) | [![pub package](https://img.shields.io/pub/v/hydrated_true_bloc.svg)](https://pub.dev/packages/hydrated_true_bloc) |
| [replay_bloc](https://github.com/mit-73/true_bloc/tree/master/packages/replay_true_bloc)     | [![pub package](https://img.shields.io/pub/v/replay_true_bloc.svg)](https://pub.dev/packages/replay_true_bloc)     |

---

## Overview

<img src="https://raw.githubusercontent.com/mit-73/true_bloc/master/docs/assets/bloc_architecture.png" width="500" alt="Bloc Architecture"></img>

The goal of this library is to make it easy to separate _presentation_ from _business logic_, facilitating testability and reusability.

## Documentation

- [Official Documentation](https://mit-73.github.io/true_bloc)
- [Bloc Package](https://github.com/mit-73/true_bloc/tree/master/packages/true_bloc/README.md)
- [Flutter Bloc Package](https://github.com/mit-73/true_bloc/tree/master/packages/flutter_true_bloc/README.md)
- [Angular Bloc Package](https://github.com/mit-73/true_bloc/tree/master/packages/angular_true_bloc/README.md)
- [Hydrated Bloc Package](https://github.com/mit-73/true_bloc/tree/master/packages/hydrated_true_bloc/README.md)
- [Replay Bloc Package](https://github.com/mit-73/true_bloc/tree/master/packages/replay_true_bloc/README.md)

## Migration

- [Migration Guide](https://mit-73.github.io/true_bloc/#/migration)

## Examples

<div style="text-align: center">
    <table>
        <tr>
            <td style="text-align: center">
                <a href="https://mit-73.github.io/true_bloc/#/fluttercountertutorial">
                    <img src="https://mit-73.github.io/true_bloc/assets/gifs/flutter_counter.gif" width="200"/>
                </a>
            </td>            
            <td style="text-align: center">
                <a href="https://mit-73.github.io/true_bloc/#/flutterinfinitelisttutorial">
                    <img src="https://mit-73.github.io/true_bloc/assets/gifs/flutter_infinite_list.gif" width="200"/>
                </a>
            </td>
            <td style="text-align: center">
                <a href="https://mit-73.github.io/true_bloc/#/flutterfirebaselogintutorial">
                    <img src="https://mit-73.github.io/true_bloc/assets/gifs/flutter_firebase_login.gif" width="200" />
                </a>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <a href="https://mit-73.github.io/true_bloc/#/flutterangulargithubsearch">
                    <img src="https://mit-73.github.io/true_bloc/assets/gifs/flutter_github_search.gif" width="200"/>
                </a>
            </td>
            <td style="text-align: center">
                <a href="https://mit-73.github.io/true_bloc/#/flutterweathertutorial">
                    <img src="https://mit-73.github.io/true_bloc/assets/gifs/flutter_weather.gif" width="200"/>
                </a>
            </td>
            <td style="text-align: center">
                <a href="https://mit-73.github.io/true_bloc/#/fluttertodostutorial">
                    <img src="https://mit-73.github.io/true_bloc/assets/gifs/flutter_todos.gif" width="200"/>
                </a>
            </td>
        </tr>
    </table>
</div>

### Dart

- [Counter](https://github.com/mit-73/true_bloc/tree/master/packages/true_bloc/example) - an example of how to create a `CounterBloc` (pure dart).

### Flutter

- [Counter](https://mit-73.github.io/true_bloc/#/fluttercountertutorial) - an example of how to create a `CounterBloc` to implement the classic Flutter Counter app.
- [Form Validation](https://github.com/mit-73/true_bloc/tree/master/examples/flutter_form_validation) - an example of how to use the `bloc` and `flutter_bloc` packages to implement form validation.
- [Bloc with Stream](https://github.com/mit-73/true_bloc/tree/master/examples/flutter_bloc_with_stream) - an example of how to hook up a `bloc` to a `Stream` and update the UI in response to data from the `Stream`.
- [Complex List](https://github.com/mit-73/true_bloc/tree/master/examples/flutter_complex_list) - an example of how to manage a list of items and asynchronously delete items one at a time using `bloc` and `flutter_bloc`.
- [Infinite List](https://mit-73.github.io/true_bloc/#/flutterinfinitelisttutorial) - an example of how to use the `bloc` and `flutter_bloc` packages to implement an infinite scrolling list.
- [Login Flow](https://mit-73.github.io/true_bloc/#/flutterlogintutorial) - an example of how to use the `bloc` and `flutter_bloc` packages to implement a Login Flow.
- [Firebase Login](https://mit-73.github.io/true_bloc/#/flutterfirebaselogintutorial) - an example of how to use the `bloc` and `flutter_bloc` packages to implement login via Firebase.
- [Github Search](https://mit-73.github.io/true_bloc/#/flutterangulargithubsearch) - an example of how to create a Github Search Application using the `bloc` and `flutter_bloc` packages.
- [Weather](https://mit-73.github.io/true_bloc/#/flutterweathertutorial) - an example of how to create a Weather Application using the `bloc` and `flutter_bloc` packages. The app uses a `RefreshIndicator` to implement "pull-to-refresh" as well as dynamic theming.
- [Todos](https://mit-73.github.io/true_bloc/#/fluttertodostutorial) - an example of how to create a Todos Application using the `bloc` and `flutter_bloc` packages.
- [Timer](https://mit-73.github.io/true_bloc/#/fluttertimertutorial) - an example of how to create a Timer using the `bloc` and `flutter_bloc` packages.
- [Firestore Todos](https://mit-73.github.io/true_bloc/#/flutterfirestoretodostutorial) - an example of how to create a Todos Application using the `bloc` and `flutter_bloc` packages that integrates with cloud firestore.
- [Shopping Cart](https://github.com/mit-73/true_bloc/tree/master/examples/flutter_shopping_cart) - an example of how to create a Shopping Cart Application using the `bloc` and `flutter_bloc` packages based on [flutter samples](https://github.com/flutter/samples/tree/master/provider_shopper).
- [Dynamic Form](https://github.com/mit-73/true_bloc/tree/master/examples/flutter_dynamic_form) - an example of how to use the `bloc` and `flutter_bloc` packages to implement a dynamic form which pulls data from a repository.
- [Wizard](https://github.com/mit-73/true_bloc/tree/master/examples/flutter_wizard) - an example of how to build a multi-step wizard using the `bloc` and `flutter_bloc` packages.
- [GraphQL](https://github.com/mit-73/true_bloc/tree/master/examples/flutter_graphql_jobs) - an example of how to use the `bloc` and `flutter_bloc` packages with `graphql` to retrieve data from [api.graphql.jobs](https://api.graphql.jobs).
- [Fluttersaurus](https://github.com/mit-73/fluttersaurus) - an example of how to use the `bloc` and `flutter_bloc` packages to create a thesaurus app -- made for Bytconf Flutter 2020.
- [I/O Photo Booth](https://github.com/flutter/photobooth) - an example of how to use the `bloc` and `flutter_bloc` packages to create a virtual photo booth web app -- made for Google I/O 2021.

### Web

- [Counter](https://github.com/mit-73/true_bloc/tree/master/examples/angular_counter) - an example of how to use a `CounterBloc` in an AngularDart app.
- [Github Search](https://github.com/mit-73/true_bloc/tree/master/examples/github_search/angular_github_search) - an example of how to create a Github Search Application using the `bloc` and `angular_bloc` packages.

### Flutter + Web

- [Github Search](https://github.com/mit-73/true_bloc/tree/master/examples/github_search) - an example of how to create a Github Search Application and share code between Flutter and AngularDart.

## Articles

- [bloc package](https://medium.com/flutter-community/flutter-bloc-package-295b53e95c5c) - An intro to the bloc package with high level architecture and examples.
- [login tutorial with flutter_bloc](https://medium.com/flutter-community/flutter-login-tutorial-with-flutter-bloc-ea606ef701ad) - How to create a full login flow using the bloc and flutter_bloc packages.
- [unit testing with bloc](https://medium.com/@felangelov/unit-testing-with-bloc-b94de9655d86) - How to unit test the blocs created in the flutter login tutorial.
- [infinite list tutorial with flutter_bloc](https://medium.com/flutter-community/flutter-infinite-list-tutorial-with-flutter-bloc-2fc7a272ec67) - How to create an infinite list using the bloc and flutter_bloc packages.
- [code sharing with bloc](https://medium.com/flutter-community/code-sharing-with-bloc-b867302c18ef) - How to share code between a mobile application written with Flutter and a web application written with AngularDart.
- [weather app tutorial with flutter_bloc](https://medium.com/flutter-community/weather-app-with-flutter-bloc-e24a7253340d) - How to build a weather app which supports dynamic theming, pull-to-refresh, and interacting with a REST API using the bloc and flutter_bloc packages.
- [todos app tutorial with flutter_bloc](https://medium.com/flutter-community/flutter-todos-tutorial-with-flutter-bloc-d9dd833f9df3) - How to build a todos app using the bloc and flutter_bloc packages.
- [firebase login tutorial with flutter_bloc](https://medium.com/flutter-community/firebase-login-with-flutter-bloc-47455e6047b0) - How to create a fully functional login/sign up flow using the bloc and flutter_bloc packages with Firebase Authentication and Google Sign In.
- [flutter timer tutorial with flutter_bloc](https://medium.com/flutter-community/flutter-timer-with-flutter-bloc-a464e8332ceb) - How to create a timer app using the bloc and flutter_bloc packages.
- [firestore todos tutorial with flutter_bloc](https://medium.com/flutter-community/firestore-todos-with-flutter-bloc-7b2d5fadcc80) - How to create a todos app using the bloc and flutter_bloc packages that integrates with cloud firestore.

## Books

- [Flutter Complete Reference](https://fluttercompletereference.com/) - A book about the Dart programming language (version 2.10, with null safety support) and the Flutter framework (version 1.20). It covers the bloc package (version 6.0.3) in all flavors: bloc, flutter_bloc hydrated_bloc, replay_bloc, bloc_test and cubit.

## Extensions

- [IntelliJ](https://plugins.jetbrains.com/plugin/12129-bloc-code-generator) - extends IntelliJ/Android Studio with support for the Bloc library and provides tools for effectively creating Blocs for both Flutter and AngularDart apps.
- [VSCode](https://marketplace.visualstudio.com/items?itemName=FelixAngelov.bloc#overview) - extends VSCode with support for the Bloc library and provides tools for effectively creating Blocs for both Flutter and AngularDart apps.

## Community

Learn more at the following links, which have been contributed by the community.

### Video Tutorials

- [Bloc Library: Basics and Beyond 🚀](https://youtu.be/knMvKPKBzGE) - Talk given at [Flutter Europe](https://fluttereurope.dev) about the basics of the bloc library, by [Felix Angelov](https://github.com/felangel).
- [Flutter Bloc Library Tutorial](https://www.youtube.com/watch?v=hTExlt1nJZI) - Introduction to the Bloc Library, by [Reso Coder](https://resocoder.com).
- [Flutter Youtube Search](https://www.youtube.com/watch?v=BJY8nuYUM7M) - How to build a Youtube Search app which interacts with an API using the bloc and flutter_bloc packages, by [Reso Coder](https://resocoder.com).
- [Flutter Bloc - AUTOMATIC LOOKUP - v0.20 (and Up), Updated Tutorial](https://www.youtube.com/watch?v=_vOpPuVfmiU) - Updated Tutorial on the Flutter Bloc Package, by [Reso Coder](https://resocoder.com).
- [Dynamic Theming with flutter_bloc](https://www.youtube.com/watch?v=YYbhkg-W8Mg) - Tutorial on how to use the flutter_bloc package to implement dynamic theming, by [Reso Coder](https://resocoder.com).
- [Persist Bloc State in Flutter](https://www.youtube.com/watch?v=vSOpZd_FFEY) - Tutorial on how to use the hydrated_bloc package to automatically persist app state, by [Reso Coder](https://resocoder.com).
- [State Management Foundation](https://www.youtube.com/watch?v=S2KmxzgsTwk&t=731s) - Introduction to state management using the flutter_bloc package, by [Techie Blossom](https://techieblossom.com).
- [Flutter Football Player Search](https://www.youtube.com/watch?v=S2KmxzgsTwk) - How to build a Football Player Search app which interacts with an API using the bloc and flutter_bloc packages, by [Techie Blossom](https://techieblossom.com).
- [Learning the Flutter Bloc Package](https://www.youtube.com/watch?v=eAiCPl3yk9A&t=1s) - Learning the flutter_bloc package live, by [Robert Brunhage](https://www.youtube.com/channel/UCSLIg5O0JiYO1i2nD4RclaQ)
- [Bloc Test Tutorial](https://www.youtube.com/watch?v=S6jFBiiP0Mc) - Tutorial on how to unit test blocs using the bloc_test package, by [Reso Coder](https://resocoder.com).
- [Bloc - from Zero to Hero](https://www.youtube.com/playlist?list=PLptHs0ZDJKt_T-oNj_6Q98v-tBnVf-S_o) - Playlist which includes everything needed to get started with bloc, by [Flutterly](https://www.youtube.com/channel/UC5PYcSe3to4mtm3SPCUmjvw).

### Written Resources

- [DevonFw Flutter Guide](https://github.com/devonfw-forge/devonfw4flutter) - A guide on building structured & scalable applications with Flutter and BLoC, by [Sebastian Faust](https://github.com/Fasust)
- [Using Google´s Flutter Framework for the Development of a Large-Scale Reference Application](https://epb.bibl.th-koeln.de/frontdoor/index/index/docId/1498) - Scientific paper describing how to build [a large-scale Flutter application](https://github.com/devonfw-forge/devonfw4flutter-mts-app) with BLoC, by [Sebastian Faust](https://github.com/Fasust)

### Extensions

- [Feature Scaffolding for VSCode](https://marketplace.visualstudio.com/items?itemName=KiritchoukC.flutter-clean-architecture) - A VSCode extension inspired by [Reso Coder's](https://resocoder.com) clean architecture tutorials, which helps quickly scaffold features, by [Kiritchouk Clément](https://github.com/KiritchoukC).

## Maintainers

- [MiT](https://github.com/mit-73)
