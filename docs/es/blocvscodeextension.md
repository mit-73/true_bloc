<p align="center">
<img src="https://raw.githubusercontent.com/mit-73/true_bloc/master/docs/assets/bloc_logo_full.png" height="100" alt="Bloc" />
</p>

<p align="center">
<a href="https://github.com/mit-73/true_bloc/actions"><img src="https://img.shields.io/github/workflow/status/mit-73/true_bloc/build.svg?logo=github" alt="build"></a>
<a href="https://codecov.io/gh/mit-73/true_bloc"><img src="https://codecov.io/gh/mit-73/true_bloc/branch/master/graph/badge.svg" alt="codecov"></a>
<a href="https://github.com/mit-73/true_bloc"><img src="https://img.shields.io/github/stars/mit-73/true_bloc.svg?style=flat&logo=github&colorB=deeppink&label=stars" alt="Star on Github"></a>
<a href="https://marketplace.visualstudio.com/items?itemName=FelixAngelov.bloc"><img src="https://vsmarketplacebadge.apphb.com/version-short/FelixAngelov.bloc.svg" alt="Version"></a>
<a href="https://marketplace.visualstudio.com/items?itemName=FelixAngelov.bloc"><img src="https://vsmarketplacebadge.apphb.com/installs-short/FelixAngelov.bloc.svg" alt="Installs"></a>
<a href="https://marketplace.visualstudio.com/items?itemName=FelixAngelov.bloc"><img src="https://vsmarketplacebadge.apphb.com/rating-short/FelixAngelov.bloc.svg" alt="Ratings"></a>
<a href="https://flutter.dev/docs/development/data-and-backend/state-mgmt/options#bloc--rx"><img src="https://img.shields.io/badge/flutter-website-deepskyblue.svg" alt="Flutter Website"></a>
<a href="https://github.com/Solido/awesome-flutter#standard"><img src="https://img.shields.io/badge/awesome-flutter-blue.svg?longCache=true" alt="Awesome Flutter"></a>

<a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/license-MIT-purple.svg" alt="License: MIT"></a>

<a href="https://github.com/mit-73/true_bloc"><img src="https://tinyurl.com/true-bloc" alt="Bloc Library"></a>
</p>

---

## Introducción

Bloc extiende [VSCode](https://code.visualstudio.com/) con soporte para [la libería Bloc](https://mit-73.github.io/true_bloc) y provee herramientas para crear [Blocs](https://github.com/mit-73/true_bloc) y [Cubits](https://github.com/mit-73/cubit) de manera efectiva tanto para aplicaciones desarrolladas en [Flutter](https://flutter.dev/) como [AngularDart](https://angulardart.dev/).

## Instalación

Bloc puede ser instalado desde la [tienda de VSCode](https://marketplace.visualstudio.com/items?itemName=FelixAngelov.bloc) o [buscando dentro de VSCode](https://code.visualstudio.com/docs/editor/extension-gallery#_search-for-an-extension).

## Comandos

| Comando            | Descripción    |
| ------------------ | -------------- |
| `Bloc: New Bloc`   | Crea una Bloc  |
| `Cubit: New Cubit` | Crea una Cubit |

Puede activar el comando al abrir la paleta de comandos (View -> Command Palette) y ejecutar el comando.

![demostración](https://raw.githubusercontent.com/mit-73/true_bloc/master/extensions/vscode/assets/new-bloc-usage-1.gif)

O puede hacer click derecho en el directorio en el cual desea crear el nuevo Bloc/Cubit y seleccionar el comando del menú desplegable.

![demostración](https://raw.githubusercontent.com/mit-73/true_bloc/master/extensions/vscode/assets/new-bloc-usage-2.gif)

## Snippets

### Bloc

| Atajo               | Descripción                                |
| ------------------- | ------------------------------------------ |
| `bloc`              | Creates a `Bloc` class                     |
| `cubit`             | Creates a `Cubit` class                    |
| `blocobserver`      | Creates a `BlocObserver` class             |
| `blocprovider`      | Creates a `BlocProvider` widget            |
| `multiblocprovider` | Creates a `MultiBlocProvider` widget       |
| `repoprovider`      | Creates a `RepositoryProvider` widget      |
| `multirepoprovider` | Creates a `MultiRepositoryProvider` widget |
| `blocbuilder`       | Creates a `BlocBuilder` widget             |
| `bloclistener`      | Creates a `BlocListener` widget            |
| `multibloclistener` | Creates a `MultiBlocListener` widget       |
| `blocconsumer`      | Creates a `BlocConsumer` widget            |
| `blocof`            | Shortcut for `BlocProvider.of()`           |
| `repoof`            | Shortcut for `RepositoryProvider.of()`     |
| `read`              | Shortcut for `context.read()`              |
| `watch`             | Shortcut for `context.watch()`             |
| `select`            | Shortcut for `context.select()`            |
| `blocstate`         | Creates a state class                      |
| `blocevent`         | Creates an event class                     |

### Freezed Bloc

| Shortcut     | Description                                                     |
| ------------ | --------------------------------------------------------------- |
| `feventwhen` | Creates a map event to state function with freeze.when function |
| `feventmap`  | Creates a map event to state function with freeze.map function  |
| `fstate`     | Creates a sub state                                             |
| `fevent`     | Creates a sub event                                             |
