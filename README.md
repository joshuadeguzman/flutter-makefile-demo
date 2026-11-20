# flutter-makefile-demo

An example of using `make` to give a Flutter project short, consistent commands. It's the companion code for the blog post [Flutter Makefiles](https://joshuamdeguzman.com/flutter-makefiles/).

## Commands

| Command | What it runs |
|---|---|
| `make analyze` | `flutter analyze` |
| `make format` | `flutter format .` |
| `make test` | `flutter test` |
| `make codegen` | `flutter pub run build_runner build --delete-conflicting-outputs` |
| `make fetch-main` | `git fetch origin main` |
| `make rebase-main` | `git pull --rebase origin main` |

The `Makefile` finds the Flutter and Dart binaries from whatever `flutter` is on your `PATH`, so it works the same on every machine and in CI.

## Why make

- One short command instead of long flags everyone has to remember.
- The same commands locally and in CI.
- Works on macOS and Linux with nothing extra to install.
