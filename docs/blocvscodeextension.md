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

## Overview

[VSCode](https://code.visualstudio.com/) support for the [Bloc Library](https://mit-73.github.io/true_bloc) and provides tools for effectively creating [Blocs](https://github.com/mit-73/true_bloc) and [Cubits](https://github.com/mit-73/cubit) for both [Flutter](https://flutter.dev/) and [AngularDart](https://angulardart.dev/) apps.

## Installation

Bloc can be installed from the [VSCode Marketplace](https://marketplace.visualstudio.com/items?itemName=FelixAngelov.bloc) or by [searching within VSCode](https://code.visualstudio.com/docs/editor/extension-gallery#_search-for-an-extension).

## Commands

| Command            | Description          |
| ------------------ | -------------------- |
| `Bloc: New Bloc`   | Generate a new Bloc  |
| `Cubit: New Cubit` | Generate a new Cubit |

You can activate the commands by launching the command palette (View -> Command Palette) and running entering the command name or you can right click on the directory in which you'd like to create the bloc/cubit and select the command from the context menu.

![demo](https://raw.githubusercontent.com/mit-73/true_bloc/master/extensions/vscode/assets/new-bloc-usage.gif)

## Code Actions

| Action                         | Description                                    |
| ------------------------------ | ---------------------------------------------- |
| `Wrap with BlocBuilder`        | Wraps current widget in a `BlocBuilder`        |
| `Wrap with BlocListener`       | Wraps current widget in a `BlocListener`       |
| `Wrap with BlocConsumer`       | Wraps current widget in a `BlocConsumer`       |
| `Wrap with BlocProvider`       | Wraps current widget in a `BlocProvider`       |
| `Wrap with RepositoryProvider` | Wraps current widget in a `RepositoryProvider` |

![demo](https://raw.githubusercontent.com/mit-73/true_bloc/master/extensions/vscode/assets/wrap-with-usage.gif)

## Snippets

### Bloc

| Shortcut            | Description                                |
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
