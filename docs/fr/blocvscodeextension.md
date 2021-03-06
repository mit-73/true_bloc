<p align="center">
<img src="https://raw.githubusercontent.com/felangel/bloc/master/docs/assets/bloc_logo_full.png" height="100" alt="Bloc" />
</p>

<p align="center">
<a href="https://github.com/felangel/bloc/actions"><img src="https://img.shields.io/github/workflow/status/felangel/bloc/build.svg?logo=github" alt="build"></a>
<a href="https://codecov.io/gh/felangel/bloc"><img src="https://codecov.io/gh/felangel/Bloc/branch/master/graph/badge.svg" alt="codecov"></a>
<a href="https://github.com/felangel/bloc"><img src="https://img.shields.io/github/stars/felangel/bloc.svg?style=flat&logo=github&colorB=deeppink&label=stars" alt="Star on Github"></a>
<a href="https://marketplace.visualstudio.com/items?itemName=FelixAngelov.bloc"><img src="https://vsmarketplacebadge.apphb.com/version-short/FelixAngelov.bloc.svg" alt="Version"></a>
<a href="https://marketplace.visualstudio.com/items?itemName=FelixAngelov.bloc"><img src="https://vsmarketplacebadge.apphb.com/installs-short/FelixAngelov.bloc.svg" alt="Installs"></a>
<a href="https://marketplace.visualstudio.com/items?itemName=FelixAngelov.bloc"><img src="https://vsmarketplacebadge.apphb.com/rating-short/FelixAngelov.bloc.svg" alt="Ratings"></a>
<a href="https://flutter.dev/docs/development/data-and-backend/state-mgmt/options#bloc--rx"><img src="https://img.shields.io/badge/flutter-website-deepskyblue.svg" alt="Flutter Website"></a>
<a href="https://github.com/Solido/awesome-flutter#standard"><img src="https://img.shields.io/badge/awesome-flutter-blue.svg?longCache=true" alt="Awesome Flutter"></a>
<a href="http://fluttersamples.com"><img src="https://img.shields.io/badge/flutter-samples-teal.svg?longCache=true" alt="Flutter Samples"></a>
<a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/license-MIT-purple.svg" alt="License: MIT"></a>
<a href="https://discord.gg/bloc"><img src="https://img.shields.io/discord/649708778631200778.svg?logo=discord&color=blue" alt="Discord"></a>
<a href="https://github.com/felangel/bloc"><img src="https://tinyurl.com/bloc-library" alt="Bloc Library"></a>
</p>

---

## Overview

Bloc ??tend [VSCode](https://code.visualstudio.com/) avec le support de la librairie de [Bloc](https://bloclibrary.dev) et fournit les outils n??cessaires pour cr??er des blocs ?? la fois pour des applications [Flutter](https://flutter.dev/) et [AngularDart](https://angulardart.dev/).

## Overview

Bloc peut ??tre install?? ?? partir de la [Marketplace VSCode](https://marketplace.visualstudio.com/items?itemName=FelixAngelov.bloc) ou [en cherchant dans VSCode](https://code.visualstudio.com/docs/editor/extension-gallery#_search-for-an-extension).

## Commandes

| Commande           | Description    |
| ------------------ | -------------- |
| `Bloc: New Bloc`   | Cr??er un Bloc  |
| `Cubit: New Cubit` | Cr??er un Cubit |

You can activate the commands by launching the command palette (View -> Command Palette) and running entering the command name or you can right click on the directory in which you'd like to create the bloc/cubit and select the command from the context menu.

![demo](https://raw.githubusercontent.com/felangel/bloc/master/extensions/vscode/assets/new-bloc-usage.gif)

## Code Actions

| Action                         | Description                                    |
| ------------------------------ | ---------------------------------------------- |
| `Wrap with BlocBuilder`        | Wraps current widget in a `BlocBuilder`        |
| `Wrap with BlocListener`       | Wraps current widget in a `BlocListener`       |
| `Wrap with BlocConsumer`       | Wraps current widget in a `BlocConsumer`       |
| `Wrap with BlocProvider`       | Wraps current widget in a `BlocProvider`       |
| `Wrap with RepositoryProvider` | Wraps current widget in a `RepositoryProvider` |

![demo](https://raw.githubusercontent.com/felangel/bloc/master/extensions/vscode/assets/wrap-with-usage.gif)

## Utilisation des raccourcis(snipets)

### Bloc

| Shortcut            | Description                               |
| ------------------- | ----------------------------------------- |
| `bloc`              | Cr??e une Classe `Bloc`                    |
| `cubit`             | Cr??e une Classe `Cubit`                   |
| `blocobserver`      | Cr??e une Classe `BlocObserver`            |
| `blocprovider`      | Cr??e un Widget `BlocProvider`             |
| `multiblocprovider` | Cr??e un Widget `MultiBlocProvider`        |
| `repoprovider`      | Cr??e un Widget `RepositoryProvider`       |
| `multirepoprovider` | Cr??e un Widget `MultiRepositoryProvider`  |
| `blocbuilder`       | Cr??e un Widget `BlocBuilder`              |
| `bloclistener`      | Cr??e un Widget `BlocListener`             |
| `multibloclistener` | Cr??e un Widget `MultiBlocListener`        |
| `blocconsumer`      | Cr??e un Widget `BlocConsumer`             |
| `blocof`            | Raccourcis pour `BlocProvider.of()`       |
| `repoof`            | Raccourcis pour `RepositoryProvider.of()` |
| `read`              | Raccourcis pour `context.read()`          |
| `watch`             | Raccourcis pour `context.watch()`         |
| `select`            | Raccourcis pour `context.select()`        |
| `blocstate`         | Cr??e une Classe state                     |
| `blocevent`         | Cr??e une Classe event                     |

### Freezed Bloc

| Shortcut     | Description                                                     |
| ------------ | --------------------------------------------------------------- |
| `feventwhen` | Creates a map event to state function with freeze.when function |
| `feventmap`  | Creates a map event to state function with freeze.map function  |
| `fstate`     | Creates a sub state                                             |
| `fevent`     | Creates a sub event                                             |
