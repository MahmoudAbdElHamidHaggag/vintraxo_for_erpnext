# Vintraxo For ERPNext

A modern, metadata-driven Flutter runtime engine for ERPNext.

## 🚀 Key Features

- **Dynamic UI Rendering**: Automatically generates forms and layouts based on ERPNext DocType metadata.
- **Offline-First Architecture**: Uses Drift (SQLite) for local caching and a robust background sync engine.
- **Responsive Design**: Adaptive layouts for Mobile, Tablet, and Desktop using a unified codebase.
- **Advanced Field Support**: Support for Link fields (searchable), Select, Date, Time, Checkbox, and more.
- **Interactive Dashboards**: Dynamic charts (Line/Bar) and Number Cards for real-time data visualization.
- **Shell Navigation**: Persistent Sidebar/Drawer navigation using Shell routes.

## 🏗️ Architecture

The project follows a modular, feature-based architecture:

- **Core**: Networking (Dio), Router (GoRouter), Storage (Drift), and Theme.
- **Features**:
  - **Auth**: Domain entry, Login, and Splash.
  - **Metadata**: DocType fetching, List views, and Workspace management.
  - **UI Schema**: The core rendering engine (Widget Factory, Translator, Form Renderer).

## 🛠️ Tech Stack

- **Flutter**: UI Framework.
- **Riverpod**: State management.
- **GoRouter**: Declarative routing.
- **Drift**: Local SQLite database.
- **Dio**: HTTP client with interceptors.
- **fl_chart**: Data visualization.

## 🏁 Getting Started

1. **Clone the repository**:
   ```bash
   git clone https://github.com/MahmoudAbdElHamidHaggag/vintraxo_for_erpnext.git
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Generate code**:
   ```bash
   dart run build_runner build --delete-conflicting-outputs
   ```

4. **Run the app**:
   ```bash
   flutter run
   ```

## 📝 License

Copyright © 2026 Vintraxo. All rights reserved.
