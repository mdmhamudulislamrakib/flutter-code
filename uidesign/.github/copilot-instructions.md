## Repository snapshot

- This is a standard Flutter multi-platform app scaffold (generated with `flutter create`). Key files and folders:
  - `pubspec.yaml` — project metadata and dependencies (SDK constraint: ^3.9.2).
  - `analysis_options.yaml` — enables `package:flutter_lints`.
  - `lib/main.dart` — app entrypoint (currently minimal/truncated in this workspace).
  - `android/`, `ios/`, `linux/`, `macos/`, `windows/`, `web/` — platform-specific hosts and native code.
  - `test/widget_test.dart` — a sample widget test.

## Big-picture architecture notes for an AI agent

- Single Flutter app codebase producing platform-specific bundles under each platform folder. Business/UI code lives under `lib/` and is compiled into `build/flutter_assets` during builds.
- Native integration or plugins are located in platform folders (e.g., `android/` uses Gradle Kotlin DSL files like `build.gradle.kts`). Avoid large edits in these folders unless you know native platform APIs.
- Generated files live in `build/` and `ios/Flutter/Generated.xcconfig` / `android` generated registrants — they are derived artifacts; prefer editing sources in `lib/`, `pubspec.yaml`, or native host templates.

## Developer workflows (concrete commands)

- Get dependencies (first step):

  - `flutter pub get`

- Analyze and lint (repository uses `flutter_lints`):

  - `flutter analyze`  # respects `analysis_options.yaml`

- Run tests:

  - `flutter test` or `flutter test test/widget_test.dart`

- Run the app locally (examples):

  - Windows desktop: `flutter run -d windows`
  - Android emulator/device: `flutter run -d <device-id>`
  - Web: `flutter run -d chrome`

- Build artifacts:

  - Android APK: `flutter build apk`
  - Web bundle: `flutter build web`
  - Windows exe: `flutter build windows`
  - iOS: `flutter build ios` (macOS host required)

Notes: macOS is required to build iOS artifacts. Generated plugin registrants and native glue are created during `flutter pub get` / build.

## Project-specific conventions and patterns

- Linting: The project includes `analysis_options.yaml` with `package:flutter_lints`; follow the recommended rules and prefer `dart format` for style.
- Minimal public API surface: at present the `lib/` folder contains only `main.dart` (truncated). Avoid large speculative refactors of `main.dart` — prefer small, testable additions and confirm intended app structure with the user.
- Asset handling: `pubspec.yaml` currently has no `assets:` section. If adding images/fonts, update `pubspec.yaml` explicitly and run `flutter pub get`.

## Integration points & external dependencies

- No third-party packages (other than `cupertino_icons`) are declared in `pubspec.yaml`.
- Platform channels / plugins: there are no obvious Dart references to `MethodChannel` or platform APIs in `lib/` (the entry file is minimal). If native code changes are required, inspect `android/` and `ios/` host code and prefer small, well-scoped changes.

## Editing guidance for an AI agent

- Be conservative with edits to `lib/main.dart` — the file appears incomplete. If asked to implement new UI or logic, create new files under `lib/` (for example `lib/src/` or `lib/widgets/`) and wire them into `main.dart` with minimal, reviewable changes.
- When adding dependencies, update `pubspec.yaml` and run `flutter pub get`. Keep dependency versions conservative (follow existing SDK constraint `^3.9.2`).
- Respect analyzer rules; run `flutter analyze` after edits and fix any lint errors before proposing large changes.
- Avoid editing generated files under `build/` or native generated registrants; instead modify source Dart/native templates and trigger a build to regenerate.

## Files worth checking when making changes

- `pubspec.yaml` — dependency and asset declarations.
- `analysis_options.yaml` — lint rules.
- `lib/main.dart` — app entry; watch for truncation before making big changes.
- `test/widget_test.dart` — update/add tests here when changing widgets.
- `android/app/build.gradle.kts` and `ios/Runner/Info.plist` — only change for platform-specific requirements.

If something in this file is unclear or you want the agent to be more/less aggressive (for example, implement a full `main.dart` vs. scaffold files), tell me which approach you prefer and I will iterate.
