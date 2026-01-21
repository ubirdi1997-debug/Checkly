# Checkly Release Notes

## Version 1.0.0

- **16 KB Memory Page Size Support**: Fixed app compatibility with devices using 16 KB memory page sizes by implementing proper memory tagging and ABI filtering for ARM64 architecture.
- **Enhanced Package Configuration**: Optimized package name and build configuration to `com.checkly.app` for consistent identification across platforms.
- **Improved Stability**: Updated NDK configuration to target arm64-v8a architecture, ensuring reliable performance on modern Android devices.
- **Offline-First Architecture**: Maintained focus on reusable lists and daily routines with offline-first data synchronization using Hive local storage.
- **Production Ready**: Initial stable release with full support for notifications, local task management, and cross-platform Flutter compatibility.
