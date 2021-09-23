<img src="https://raw.githubusercontent.com/mit-73/true_bloc/master/docs/assets/bloc_logo_full.png" height="60" alt="Bloc" />

[![build](https://github.com/mit-73/true_bloc/workflows/build/badge.svg)](https://github.com/mit-73/true_bloc/actions)
[![codecov](https://codecov.io/gh/mit-73/true_bloc/branch/master/graph/badge.svg)](https://codecov.io/gh/mit-73/true_bloc)
[![Star on GitHub](https://img.shields.io/github/stars/mit-73/true_bloc.svg?style=flat&logo=github&colorB=deeppink&label=stars)](https://github.com/mit-73/true_bloc)
[![style: effective dart](https://img.shields.io/badge/style-effective_dart-40c4ff.svg)](https://github.com/tenhobi/effective_dart)
[![Flutter Website](https://img.shields.io/badge/flutter-website-deepskyblue.svg)](https://flutter.dev/docs/development/data-and-backend/state-mgmt/options#bloc--rx)
[![Awesome Flutter](https://img.shields.io/badge/awesome-flutter-blue.svg?longCache=true)](https://github.com/Solido/awesome-flutter#standard)
[![Flutter Samples](https://img.shields.io/badge/flutter-samples-teal.svg?longCache=true)](http://fluttersamples.com)
[![Discord](https://img.shields.io/discord/649708778631200778.svg?logo=discord&color=blue)](https://discord.gg/true_bloc)
[![License: MIT](https://img.shields.io/badge/license-MIT-purple.svg)](https://opensource.org/licenses/MIT)

---

Eine vorhersagbare Zustandsverwaltungsbibliothek, die bei der Implementierung des [BLoC-Entwurfsmusters](https://www.didierboelens.com/2018/08/reactive-programming---streams---bloc) hilft.

| Paket                                                                              | Pub                                                                                                    |
| ---------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------ |
| [bloc](https://github.com/mit-73/true_bloc/tree/master/packages/true_bloc)                 | [![pub package](https://img.shields.io/pub/v/true_bloc.svg)](https://pub.dev/packages/true_bloc)                 |
| [bloc_test](https://github.com/mit-73/true_bloc/tree/master/packages/bloc_test)       | [![pub package](https://img.shields.io/pub/v/bloc_test.svg)](https://pub.dev/packages/bloc_test)       |
| [flutter_bloc](https://github.com/mit-73/true_bloc/tree/master/packages/flutter_bloc) | [![pub package](https://img.shields.io/pub/v/flutter_bloc.svg)](https://pub.dev/packages/flutter_bloc) |
| [angular_bloc](https://github.com/mit-73/true_bloc/tree/master/packages/angular_bloc) | [![pub package](https://img.shields.io/pub/v/angular_bloc.svg)](https://pub.dev/packages/angular_bloc) |

## Überblick

<img src="https://raw.githubusercontent.com/mit-73/true_bloc/master/docs/assets/bloc_architecture.png" alt="Bloc Architecture" />

Das Ziel dieser Bibliothek ist es, eine erleichterte Trennung von _Präsentation_ und _Geschäftslogik_ zu ermöglichen, um die Testbarkeit und Wiederverwendbarkeit zu verbessern.

## Dokumentation

- [Offizielle Dokumentation](https://mit-73.github.io/true_bloc)
- [Bloc Paket](https://github.com/mit-73/true_bloc/tree/master/packages/true_bloc/README.md)
- [Flutter Bloc Paket](https://github.com/mit-73/true_bloc/tree/master/packages/flutter_bloc/README.md)
- [Angular Bloc Paket](https://github.com/mit-73/true_bloc/tree/master/packages/angular_bloc/README.md)

## Migration

- [Upgrade von v0.x zu v2.x ](https://dev.to/mhadaily/upgrade-to-bloc-library-v1-0-0-for-flutter-and-angular-dart-2np0)

## Beispiele

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

- [Counter](https://github.com/mit-73/true_bloc/tree/master/packages/true_bloc/example) - ein Beispiel dafür, wie man einen "CounterBloc" (reiner Dart) erstellt.

### Flutter

- [Counter](https://mit-73.github.io/true_bloc/#/fluttercountertutorial) - ein Beispiel, wie man einen `CounterBloc` erstellt, um die klassische Flutter Counter App zu implementieren.
- [Formular-Validierung](https://github.com/mit-73/true_bloc/tree/master/examples/flutter_form_validation) - ein Beispiel für die Verwendung der Pakete `bloc` und `flutter_bloc` zur Implementierung der Formularvalidierung.
- [Bloc mit Stream](https://github.com/mit-73/true_bloc/tree/master/examples/flutter_bloc_with_stream) - ein Beispiel dafür, wie man einen `bloc` an einen `Stream` anschließt und die Benutzeroberfläche als Reaktion auf Daten aus dem `Stream` aktualisiert.
- [Unbegrenzte Liste](https://mit-73.github.io/true_bloc/#/flutterinfinitelisttutorial) - ein Beispiel für die Verwendung der Pakete `bloc` und `flutter_bloc` zur Implementierung einer Liste mit unendlichem Bildlauf.
- [Anmeldevorgang](https://mit-73.github.io/true_bloc/#/flutterlogintutorial) - ein Beispiel für die Verwendung der Pakete `bloc` und `flutter_bloc` zur Implementierung eines Anmeldevorgangs.
- [Firebase-Anmeldung](https://mit-73.github.io/true_bloc/#/flutterfirebaselogintutorial) - ein Beispiel für die Verwendung der Pakete `bloc` und `flutter_bloc` zur Implementierung der Anmeldung über Firebase.
- [Github Suche](https://mit-73.github.io/true_bloc/#/flutterangulargithubsearch) - ein Beispiel für die Erstellung einer Github-Suchanwendung unter Verwendung der Pakete `bloc` und `flutter_bloc`.
- [Wetter](https://mit-73.github.io/true_bloc/#/flutterweathertutorial) - ein Beispiel für die Erstellung einer Wetteranwendung unter Verwendung der Pakete `bloc` und `flutter_bloc`. Die Anwendung verwendet einen `RefreshIndicator`, um "pull-to-refresh" sowie dynamische Themes
- [Todos](https://mit-73.github.io/true_bloc/#/fluttertodostutorial) - ein Beispiel für die Erstellung einer Todo-Anwendung unter Verwendung der Pakete `bloc` und `flutter_bloc`.
- [Timer](https://github.com/mit-73/true_bloc/tree/master/examples/flutter_timer) - ein Beispiel für die Erstellung eines Timers unter Verwendung der Pakete `bloc` und `flutter_bloc`.
- [Firestore Todos](https://mit-73.github.io/true_bloc/#/flutterfirestoretodostutorial) - ein Beispiel für die Erstellung einer Todo-Anwendung unter Verwendung der Pakete `bloc` und `flutter_bloc`, die mit der Firestore Cloud integriert ist.
- [Warenkorb](https://github.com/mit-73/true_bloc/tree/master/examples/flutter_shopping_cart) - ein Beispiel für die Erstellung einer Warenkorb-Anwendung unter Verwendung der Pakete `bloc` und `flutter_bloc`, basierend auf [flutter samples](https://github.com/flutter/samples/tree/master/provider_shopper).
- [Dynamische Formular](https://github.com/mit-73/true_bloc/tree/master/examples/flutter_dynamic_form) - ein Beispiel für die Verwendung der Pakete `bloc` und `flutter_bloc` zur Implementierung eines dynamischen Formulars, das Daten aus einem Repository abruft.

### Web

- [Counter](https://github.com/mit-73/true_bloc/tree/master/examples/angular_counter) - ein Beispiel für die Verwendung eines `CounterBloc` in einer AngularDart-App.
- [Github Suche](https://github.com/mit-73/true_bloc/tree/master/examples/github_search/angular_github_search) - ein Beispiel für die Erstellung einer Github-Suchanwendung unter Verwendung der Pakete `bloc` und `angular_bloc`.

### Flutter + Web

- [Github Suche](https://github.com/mit-73/true_bloc/tree/master/examples/github_search) - ein Beispiel dafür, wie man eine Github-Suchanwendung erstellt und Code zwischen Flutter und AngularDart austauscht.

## Articles

- [bloc package](https://medium.com/flutter-community/flutter-bloc-package-295b53e95c5c) - Eine Einführung in das bloc-Paket mit der Architektur auf hohem Niveau und Beispielen.
- [login tutorial with flutter_bloc](https://medium.com/flutter-community/flutter-login-tutorial-with-flutter-bloc-ea606ef701ad) - Wie man einen vollständigen Anmeldevorgang mit den Paketen bloc und flutter_bloc erstellt.
- [unit testing with bloc](https://medium.com/@felangelov/unit-testing-with-bloc-b94de9655d86) - Wie man die im Flutter-Login-Tutorial erstellten Blöcke einzeln testet.
- [infinite list tutorial with flutter_bloc](https://medium.com/flutter-community/flutter-infinite-list-tutorial-with-flutter-bloc-2fc7a272ec67) - Wie man eine unendliche Liste mit den Paketen bloc und flutter_bloc erstellt.
- [code sharing with bloc](https://medium.com/flutter-community/code-sharing-with-bloc-b867302c18ef) - Wie man Code zwischen einer mit Flutter geschriebenen mobilen Anwendung und einer mit AngularDart geschriebenen Webanwendung austauscht.
- [weather app tutorial with flutter_bloc](https://medium.com/flutter-community/weather-app-with-flutter-bloc-e24a7253340d) - Wie man eine Wetter-App erstellt, die dynamische Themes, Pull-to-Refresh und die Interaktion mit einer REST-API unter Verwendung der Pakete bloc und flutter_bloc unterstützt.
- [todos app tutorial with flutter_bloc](https://medium.com/flutter-community/flutter-todos-tutorial-with-flutter-bloc-d9dd833f9df3) - Wie man eine ToDo-App mit den Paketen bloc und flutter_bloc erstellt.
- [firebase login tutorial with flutter_bloc](https://medium.com/flutter-community/firebase-login-with-flutter-bloc-47455e6047b0) - Wie man mit den Paketen bloc und flutter_bloc mit Firebase Authentication und Google Sign-In einen voll funktionsfähigen Login/Sign Up Flow erstellt.
- [flutter timer tutorial with flutter_bloc](https://medium.com/flutter-community/flutter-timer-with-flutter-bloc-a464e8332ceb) - Wie man eine Timer-App mit den Paketen bloc und flutter_bloc erstellt.
- [firestore todos tutorial with flutter_bloc](https://medium.com/flutter-community/firestore-todos-with-flutter-bloc-7b2d5fadcc80) - Wie man eine ToDo-App mit den Paketen bloc und flutter_bloc erstellt, die mit der Firestore Cloud integriert ist.

## Erweiterungen

- [IntelliJ](https://plugins.jetbrains.com/plugin/12129-bloc-code-generator) - erweitert IntelliJ/Android Studio um Unterstützung für die Bloc-Bibliothek zu gewährleisten und bietet Werkzeuge zur effektiven Erstellung von Blocs für Flutter- und AngularDart-Apps.
- [VSCode](https://marketplace.visualstudio.com/items?itemName=FelixAngelov.bloc#overview) - erweitert VSCode um Unterstützung für die Bloc-Bibliothek zu gewährleisten und bietet Werkzeuge zur effektiven Erstellung von Blocs sowohl für Flutter- als auch für AngularDart-Apps.

## Community

Weitere Informationen finden Sie unter den folgenden Links, die von der Community zur Verfügung gestellt wurden.

### Video Tutorials (englisch)

- [Bloc Library: Basics and Beyond 🚀](https://youtu.be/knMvKPKBzGE) - Vortrag bei [Flutter Europe](https://fluttereurope.dev) über die Grundlagen der Bloc-Bibliothek, von [MiT](https://github.com/mit-73).
- [Flutter Bloc Library Tutorial](https://www.youtube.com/watch?v=hTExlt1nJZI) - Einführung in die Bloc-Bibliothek, von [Reso Coder](https://resocoder.com).
- [Flutter Youtube Search](https://www.youtube.com/watch?v=BJY8nuYUM7M) - Wie man eine Youtube-Such-App erstellt, die mit einer API interagiert, indem man die Pakete bloc und flutter_bloc verwendet, von [Reso Coder](https://resocoder.com).
- [Flutter Bloc - AUTOMATIC LOOKUP - v0.20 (and Up), Updated Tutorial](https://www.youtube.com/watch?v=_vOpPuVfmiU) - Aktualisiertes Tutorial über das Flutter Bloc Paket, von [Reso Coder](https://resocoder.com).
- [Dynamic Theming with flutter_bloc](https://www.youtube.com/watch?v=YYbhkg-W8Mg) - Tutorial über die Verwendung des flutter_bloc Pakets zur Implementierung dynamischer Themen, von[Reso Coder](https://resocoder.com).
- [Persist Bloc State in Flutter](https://www.youtube.com/watch?v=vSOpZd_FFEY) - Tutorial über die Verwendung des hydrated_bloc Pakets zur automatischen Aufrechterhaltung des Anwendungsstatus, von [Reso Coder](https://resocoder.com).
- [State Management Foundation](https://www.youtube.com/watch?v=S2KmxzgsTwk&t=731s) - Einführung in die Zustandsverwaltung mit dem Paket flutter_bloc, von [Techie Blossom](https://techieblossom.com).
- [Flutter Football Player Search](https://www.youtube.com/watch?v=S2KmxzgsTwk) - Wie man eine Football-Spieler-Such-App erstellt, die mit einer API interagiert, indem man die Pakete bloc und flutter_bloc verwendet, von [Techie Blossom](https://techieblossom.com).
- [Learning the Flutter Bloc Package](https://www.youtube.com/watch?v=eAiCPl3yk9A&t=1s) - Das flutter_bloc Paket live lernen, durch [Robert Brunhage](https://www.youtube.com/channel/UCSLIg5O0JiYO1i2nD4RclaQ)
- [Bloc Test Tutorial](https://www.youtube.com/watch?v=S6jFBiiP0Mc) - Tutorial zum Testen einzelner blocs mit dem bloc_test Paket, von [Reso Coder](https://resocoder.com).

### Schriftliche Quellen

- [DevonFw Flutter Guide](https://github.com/devonfw-forge/devonfw4flutter) - Ein Leitfaden zur Erstellung strukturierter und skalierbarer Anwendungen mit Flutter und BLoC, von [Sebastian Faust](https://github.com/Fasust)
- [Verwendung des Flutter-Frameworks von Google für die Entwicklung einer groß angelegten Referenzanwendung](https://epb.bibl.th-koeln.de/frontdoor/index/index/docId/1498) - Wissenschaftliche Ausarbeitung, die beschreibt, wie man [eine groß angelegte Flutter-Anwendung](https://github.com/devonfw-forge/devonfw4flutter-mts-app) erstellt mit BLoC, von [Sebastian Faust](https://github.com/Fasust)

### Erweiterungen

- [Funktionsgerüst für VSCode](https://marketplace.visualstudio.com/items?itemName=KiritchoukC.flutter-clean-architecture) - Eine VSCode-Erweiterung inspiriert von [Reso Coder's](https://resocoder.com) saubere Architektur-Tutorials, die dazu beitragen, dass Funktionen schnell zu einem Gerüst werden, von [Kiritchouk Clément](https://github.com/KiritchoukC).

## Maintainers

- [MiT](https://github.com/mit-73)
