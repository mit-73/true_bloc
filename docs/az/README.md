<img src="https://raw.githubusercontent.com/mit-73/true_bloc/master/docs/assets/bloc_logo_full.png" height="60" alt="Bloc" />

[![build](https://github.com/mit-73/true_bloc/workflows/build/badge.svg)](https://github.com/mit-73/true_bloc/actions)
[![codecov](https://codecov.io/gh/mit-73/true_bloc/branch/master/graph/badge.svg)](https://codecov.io/gh/mit-73/true_bloc)
[![Star on GitHub](https://img.shields.io/github/stars/mit-73/true_bloc.svg?style=flat&logo=github&colorB=deeppink&label=stars)](https://github.com/mit-73/true_bloc)

[![Flutter Website](https://img.shields.io/badge/flutter-website-deepskyblue.svg)](https://flutter.dev/docs/development/data-and-backend/state-mgmt/options#bloc--rx)
[![Awesome Flutter](https://img.shields.io/badge/awesome-flutter-blue.svg?longCache=true)](https://github.com/Solido/awesome-flutter#standard)


[![License: MIT](https://img.shields.io/badge/license-MIT-purple.svg)](https://opensource.org/licenses/MIT)

---

[BLoC design pattern](https://www.didierboelens.com/2018/08/reactive-programming---streams---bloc)-i həyata keçirməyə kömək edən gözlənilən vəziyyətin idarə edilməsi kitabxanası.

| Paketlər                                                                           | Pub                                                                                                    |
| ---------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------ |
| [bloc](https://github.com/mit-73/true_bloc/tree/master/packages/true_bloc)                 | [![pub package](https://img.shields.io/pub/v/true_bloc.svg)](https://pub.dev/packages/true_bloc)                 |
| [bloc_test](https://github.com/mit-73/true_bloc/tree/master/packages/true_bloc_test)       | [![pub package](https://img.shields.io/pub/v/true_bloc_test.svg)](https://pub.dev/packages/true_bloc_test)       |
| [flutter_bloc](https://github.com/mit-73/true_bloc/tree/master/packages/flutter_true_bloc) | [![pub package](https://img.shields.io/pub/v/flutter_true_bloc.svg)](https://pub.dev/packages/flutter_true_bloc) |
| [angular_bloc](https://github.com/mit-73/true_bloc/tree/master/packages/angular_true_bloc) | [![pub package](https://img.shields.io/pub/v/angular_true_bloc.svg)](https://pub.dev/packages/angular_true_bloc) |

## İcmal

<img src="https://raw.githubusercontent.com/mit-73/true_bloc/master/docs/assets/bloc_architecture.png" alt="Bloc Architecture" />

Kitabxananın məqsədi _presentation_-ın (dizaynın) _businesss logic_-dən (hesablama və məntiqi hissədən) ayrılmasının, test edilə bilinməsinin və təkrar istifadənin asanlaşdırılmasıdır.

## Dokumentasiya

- [Rəsmi Dokumentasiya](https://mit-73.github.io/true_bloc)
- [Bloc Paketi](https://github.com/mit-73/true_bloc/tree/master/packages/true_bloc/README.md)
- [Flutter Bloc Paketi](https://github.com/mit-73/true_bloc/tree/master/packages/flutter_true_bloc/README.md)
- [Angular Bloc Paketi](https://github.com/mit-73/true_bloc/tree/master/packages/angular_true_bloc/README.md)

## Migrasiya

- [Versiyanın v0.x-dən v2.x-ə yüksəldilməsi](https://dev.to/mhadaily/upgrade-to-bloc-library-v1-0-0-for-flutter-and-angular-dart-2np0)

## Nümunələr

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

- [Counter](https://github.com/mit-73/true_bloc/tree/master/packages/true_bloc/example) - `CounterBloc`-un yaradılması ilə bağlı nümunə (sırf dart).

### Flutter

- [Sayğac](https://mit-73.github.io/true_bloc/#/fluttercountertutorial) - Klassik Flutter Counter tətbiqinin həyəta keçirilməsi üçün `CounterBloc`-un necə yaradılması haqqında nümunə.
- [Form Təsdiqləmə](https://github.com/mit-73/true_bloc/tree/master/examples/flutter_form_validation) - form təsdiqləməni həyata keçirmək üçün `bloc` və `flutter_bloc`-un necə istifadə edilməsi haqqında nümunə.
- [Stream ilə Bloc](https://github.com/mit-73/true_bloc/tree/master/examples/flutter_bloc_with_stream) - `bloc`-un `Stream`-ə necə qoşulması və `Stream`-dən gələn məlumata əsasən İstifadəçi İnterfeysinin yenilənməsi haqqında nümunə.
- [Sonsuz List](https://mit-73.github.io/true_bloc/#/flutterinfinitelisttutorial) - sonsuz listin həyatə keçirilməsi üçün `bloc` and `flutter_bloc`-un necə istifadə edilməsi haqqında nümunə.
- [Login prosesi](https://mit-73.github.io/true_bloc/#/flutterlogintutorial) - Login prosesini həyata keçirmək üçün `bloc` və `flutter_bloc` paketlərini necə istifadə etmək haqqında nümunə.
- [Firebase Login](https://mit-73.github.io/true_bloc/#/flutterfirebaselogintutorial) - Firebase ilə login prosesini həyata keçirmək üçün `bloc` və `flutter_bloc` paketlərindən necə istifadə etmək haqqında nümunə.
- [Github-da Axtarış](https://mit-73.github.io/true_bloc/#/flutterangulargithubsearch) - `bloc` və `flutter_bloc` paketlərini istifadə edərək Github-da Axtarış Tətbiqinin necə yaradılması haqqında nümunə.
- [Hava](https://mit-73.github.io/true_bloc/#/flutterweathertutorial) - `bloc` və `flutter_bloc` paketlərini istifadə edərək Hava tətbiqinin yaradılması haqqında nümunə. Tətbiq aşağı sürükləməklə yenilənmə üçün `RefreshIndicator` və dinamik mövzu (theme) dəyişilməsini istifadə edir.
- [Todo-lar](https://mit-73.github.io/true_bloc/#/fluttertodostutorial) -`bloc` və `flutter_bloc` paketlərindən istifadə edərək Todo-lar Tətbiqinin necə yaradılması haqqında nümunə.
- [Taymer](https://github.com/mit-73/true_bloc/tree/master/examples/flutter_timer) - `bloc` və `flutter_bloc` paketlərindən istifadə edərək Taymerin necə yaradılması haqqında nümunə.
- [Firestore Todo-lar](https://mit-73.github.io/true_bloc/#/flutterfirestoretodostutorial) `bloc` və `flutter_bloc` paketlərindən istifadə edərək və onları cloud firestore-a inteqrasiya edərək Todo-lar Tətbiqinin necə yaradılması haqqında nümunə.
- [Alış-veriş səbəti](https://github.com/mit-73/true_bloc/tree/master/examples/flutter_shopping_cart) - [flutter nümunələri](https://github.com/flutter/samples/tree/master/provider_shopper) əsasında `bloc` və `flutter_bloc` paketlərini istifadə edərək Alış-Veriş Səbəti tətbiqinin necə yaradılması haqqında nümunə.
- [Dinamik Form](https://github.com/mit-73/true_bloc/tree/master/examples/flutter_dynamic_form) - `bloc` və `flutter_bloc` paketlərini istifadə edərək repository-dən məlumatı əldə edən dinamik formun həyata keçirilməsi haqqında nümunə.

### Veb

- [Sayğac](https://github.com/mit-73/true_bloc/tree/master/examples/angular_counter) - `CounterBloc`un AngularDart tətbiqində necə istifadə olunması haqqında nümunə.
- [Github-da Axtarış](https://github.com/mit-73/true_bloc/tree/master/examples/github_search/angular_github_search) - `bloc` və `angular_bloc` paketlərini istifadə edərək Github-da Axtarış Tətbiqinin necə yaradılması haqqında nümunə.

### Flutter + Veb

- [Github-da Axtarış](https://github.com/mit-73/true_bloc/tree/master/examples/github_search) - Github-da Axtarış Tətbiqinin yaradılması və kodun Flutter və AngularDart arasında bölüşdürülməsi haqqında nümunə.

## Məqalələr

- [bloc paketi](https://medium.com/flutter-community/flutter-bloc-package-295b53e95c5c) - Yuxarı səviyyəli arxitektura və nümunələr ilə bloc paketinə giriş.
- [flutter_bloc ilə login dərsi](https://medium.com/flutter-community/flutter-login-tutorial-with-flutter-bloc-ea606ef701ad) - bloc və flutter_bloc paketlərini istifadə edərək tam login prosesinin necə yaradılması.
- [bloc ilə unit testing](https://medium.com/@felangelov/unit-testing-with-bloc-b94de9655d86) - flutter login dərsində yaradılan bloc-ların necə unit test edilməsi.
- [flutter_bloc ilə sonsuz list dərsi](https://medium.com/flutter-community/flutter-infinite-list-tutorial-with-flutter-bloc-2fc7a272ec67) - bloc və flutter_bloc paketlərini istifadə edərək sonsuz listin necə yaradılması.
- [bloc ilə kodun bölüşdürülməsi](https://medium.com/flutter-community/code-sharing-with-bloc-b867302c18ef) Flutter ilə yazılan mobil tətbiq və AngularDart ilə yazılan veb tətbiq arasında kodun necə bölüşdürülməsi.
- [flutter_bloc ilə hava tətbiqi dərsi](https://medium.com/flutter-community/weather-app-with-flutter-bloc-e24a7253340d) - bloc və flutter_bloc paketlərini istifadə edərək, dinamik mövzu (theme) dəyişdirilməsini, aşağı sürükləyərək yenilənməni və REST APİ ilə əlaqəni özündə cəmləşdirən hava tətbiqinin necə yaradılması.
- [flutter_bloc ilə todo-lar tətbiqi dərsi](https://medium.com/flutter-community/flutter-todos-tutorial-with-flutter-bloc-d9dd833f9df3) - bloc və flutter_bloc paketlərini istifadə edərək, todo-lar tətbiqinin necə yaradılması.
- [flutter_bloc ilə firebase login dərsi](https://medium.com/flutter-community/firebase-login-with-flutter-bloc-47455e6047b0) - bloc və flutter_bloc paketlərini istifadə edərək, Firebase İdentifikasiyası və Google Sign İn ilə tam funksional login/qeydiyyat prosesinin necə yaradılması.
- [flutter_bloc ilə flutter taymer dərsi](https://medium.com/flutter-community/flutter-timer-with-flutter-bloc-a464e8332ceb) - bloc və flutter_bloc paketlərini istifadə edərək, timer tətbiqinin necə yaradılması.
- [flutter_bloc ilə firestore todos dərsi](https://medium.com/flutter-community/firestore-todos-with-flutter-bloc-7b2d5fadcc80) - bloc və flutter_bloc paketlərini istifadə edərək və onları cloud firesotre ilə inteqrasiya edərək, todolar tətbiqinin necə yaradılması.

## Extension-lar

- [IntelliJ](https://plugins.jetbrains.com/plugin/12129-bloc-code-generator) - İntelliJ və Android Studio-un imkanlarını Bloc kitabxanası üçün genişlədirir və Flutter və AngularDart tətbiqlərində Bloc-ların effektiv şəkildə yaradılması üçün ləvazimatlar təmin edir.
- [VSCode](https://marketplace.visualstudio.com/items?itemName=FelixAngelov.bloc#overview) - VSCode-un imkanlarını Bloc kitabxanası üçün genişlədirir və Flutter və AngularDart tətbiqlərində Bloc-ların effektiv şəkildə yaradılması üçün ləvazimatlar təmin edir.

## İcma

İcma tərəfindən yaradılan aşağıdakı linklər ilə daha çox öyrən.

### Video Dərslər

- [Bloc Library: Basics and Beyond 🚀](https://youtu.be/knMvKPKBzGE) - Talk given at [Flutter Europe](https://fluttereurope.dev) about the basics of the bloc library, by [Felix Angelov](https://github.com/felangel).
- [Flutter Bloc Kitabxanası Dərsi](https://www.youtube.com/watch?v=hTExlt1nJZI) - [Reso Coder](https://resocoder.com) tərəfindən, Bloc kitabxanasına giriş.
- [Flutter Youtube Axtarışı](https://www.youtube.com/watch?v=BJY8nuYUM7M) - [Reso Coder](https://resocoder.com) tərəfindən, bloc və flutter_bloc paketlərini istifadə edərək, API ilə əlaqəli Youtube Axtarış tətbiqinin yaradılması.
- [Flutter Bloc - AUTOMATIC LOOKUP - v0.20 (and Up), Updated Tutorial](https://www.youtube.com/watch?v=_vOpPuVfmiU) - [Reso Coder](https://resocoder.com) tərəfindən, Flutter Bloc Paketi haqqqında yenilənmiş dərs.
- [flutter_bloc ilə dinamik mövzu (theme) dəyişmə](https://www.youtube.com/watch?v=YYbhkg-W8Mg) - [Reso Coder](https://resocoder.com) tərəfindən, dinamik mövzu dəyişmənin həyata keçirilməsi üçün flutter_bloc paketinin necə istifadə olunması haqqında dərs.
- [Flutter-də Davamlı Bloc Vəziyyəti](https://www.youtube.com/watch?v=vSOpZd_FFEY) - [Reso Coder](https://resocoder.com) tərəfindən, avtomatik olaraq, tətbiqin vəziyyətinin davam etdirilməsi üçün hydrated_bloc paketinin necə istifadə olunması haqqında dərs.
- [Vəziyyətin idarə olunmasının əsasları](https://www.youtube.com/watch?v=S2KmxzgsTwk&t=731s) - [Techie Blossom](https://techieblossom.com) tərəfindən, flutter_bloc paketi istifadə edərək, vəziyyətin idarə olunmasına giriş.
- [Flutter Futbolçu Axtarışı](https://www.youtube.com/watch?v=S2KmxzgsTwk) - [Techie Blossom](https://techieblossom.com) tərəfindən, bloc və flutter_bloc paketlərini istifadə edərək, API ilə işləyən Futbolçu Axtarışı tətbiqinin necə yaradılması.
- [Flutter Bloc Paketinin öyrənilməsi](https://www.youtube.com/watch?v=eAiCPl3yk9A&t=1s) - [Robert Brunhage](https://www.youtube.com/channel/UCSLIg5O0JiYO1i2nD4RclaQ) tərəfindən, flutter_bloc paketinin canlı olaraq öyrənilməsi.
- [Bloc Test Dərsi](https://www.youtube.com/watch?v=S6jFBiiP0Mc) - [Reso Coder](https://resocoder.com) tərəfindən, bloc_test paketini istifadə edərək, bloc-ların necə unit test olunması haqqında dərs.
- [Bloc Dərsləri](https://www.youtube.com/watch?v=F2fmfB_ZxK0&list=PLKLWpjPq8Lfhg3J49fXM4Z_X23WPe7bQ5) - [Kənan Yusubov](https://github.com/KenanYusubov) tərəfindən hazırlanmış Bloc haqqında 5 video dərs.

### Extension-lar

- [Feature Scaffolding for VSCode](https://marketplace.visualstudio.com/items?itemName=KiritchoukC.flutter-clean-architecture) -[Reso Coder's](https://resocoder.com)-in Clean Arxitektura dərslərindən ilhamlanaraq, [Kiritchouk Clément](https://github.com/KiritchoukC) tərəfindən yaradılan, sürətli şəkildə özəlliklərin (features) skeletinin qurulması üçün VSCode extension-u.

## Maintainer-lər

- [MiT](https://github.com/mit-73)
