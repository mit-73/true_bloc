/// An extension to [package:bloc](https://github.com/mit-73/bloc)
/// which automatically persists and restores bloc and cubit states.
/// Built to work with [package:bloc](https://pub.dev/packages/bloc).
library hydrated_bloc;

export 'package:true_bloc/bloc.dart';

export 'src/hydrated_bloc.dart' hide NIL;
export 'src/hydrated_cipher.dart';
export 'src/hydrated_storage.dart';