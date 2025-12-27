# Checkly

A simple, offline-first checklist app focused on reusable lists, daily routines, and clarity.

## Features

- ✅ Fully offline - no internet required
- ✅ No ads, analytics, or data sharing
- ✅ Reusable checklists with one-tap reset
- ✅ Drag & drop reordering
- ✅ Swipe to delete with undo
- ✅ Search and sort functionality
- ✅ Pin/unpin checklists
- ✅ Light and dark mode support
- ✅ Material 3 design

## Getting Started

### Prerequisites

- Flutter SDK (3.0.0 or higher)
- Android Studio or VS Code with Flutter extensions
- Android SDK (API 21 or higher)

### Installation

1. Clone or download this repository

2. Install dependencies:
```bash
flutter pub get
```

3. Generate Hive adapters:
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

4. Run the app:
```bash
flutter run
```

### Building for Release

```bash
flutter build apk --release
```

## Architecture

- **State Management**: Riverpod
- **Local Storage**: Hive
- **UI Framework**: Flutter with Material 3
- **Architecture Pattern**: Feature-based structure

## Permissions

This app requires **NO permissions** - it's completely offline and stores all data locally.

## License

Copyright © MINORMEND CONSTRUCTION PRIVATE LIMITED

## Support

For support, email: minormendcon1997@gmail.com
