
# 🚀 Flutter Starter Project 🚀

🌟 Welcome to the **Flutter Starter Project**! This is your supercharged starting point for Flutter apps, loaded with best practices and libraries that will supercharge your development journey. 🌟

## 🎯 Features 🎯

- **🌐 Networking with Dio**: Seamlessly send HTTP requests.
- **🔥 State Management with GetX**: Manage your app's state like a pro.
- **🌓 Adaptive Theming**: Dark 🌙 and light ☀️ themes at your fingertips.
- **🌍 Internationalization**: Speak 🗣 to the world in multiple languages.
- **🖼 Image Handling**: Picking and viewing images has never been easier.
- **🚦 Routing**: Navigate with the prowess of the Go Router.
- **📱 Device-specific Features**: Check online status, high refresh rates, and more.
- **💡 Tooltips**: Enhance UX with beautiful tooltips.
- **🎨 UI Components**: Spinners, toast messages, and beyond!

## 📂 Project Structure 📂

- **🌐 Networking**: 
  - **Dio**: HTTP operations? No sweat with Dio.
  - **Interceptors**: Handle logging, errors, and more like a breeze.
  - **Repository Pattern**: `ApiRepository` stands between the data source and the app, ensuring clean code.
  
- **🔥 State Management**:
  - **GetX**: Top-notch state management, dependency injection, and routing.
  - **Controllers**: Core logic? Find it in GetX controllers. E.g., `InitialStatusController` for initial setups.
  
- **🚦 Routing**:
  - **Go Router**: Intuitive and efficient routing.
  - **AppPages & Routes**: Define in `AppPages`, refer with `Routes` constants.

- **🌍 Internationalization (i18n)**:
  - Speak to everyone with `flutter_localizations` and `intl`.
  
- **🖥 Generate Dart localization files**:
   After the ARB files setup, run:
   ```bash
   flutter pub get
   flutter pub run intl_translation:generate_from_arb --output-dir=lib/l10n --no-use-deferred-loading lib/localization.dart lib/l10n/app_*.arb
   ```

- **🎨 UI**:
  - **Themes**: Toggle between light ☀️ and dark 🌙 in `Themes`.
  - **Widgets**: Widgets like `LoadingWidget` are here to charm.
  - **Tooltips**: Thanks to both `el_tooltip` and `just_the_tooltip` for swanky tooltips.

## 📦 Dependencies 📦

For a detailed view, peek into the `pubspec.yaml`. Key players? `get`, `dio`, `go_router`, `adaptive_theme`, `intl`, and others.

## 🚀 Getting Started 🚀

1. **🔧 Setup**:
   
   ```bash
   git clone https://github.com/furqax/flutter-starter-kit.git
   ```

2. **📦 Install Dependencies**:

   ```bash
   flutter pub get
   ```

3. **🏃‍♂️ Run**:

   ```bash
   flutter run
   ```

## 🤝 Contributions 🤝

Your ideas, issues, and feature requests are golden! Let's build together. 💪

## ©️ License ©️

**Muhammad Furqan**

---
