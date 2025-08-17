# Riverpod Counter App

A Flutter application demonstrating clean architecture, Riverpod state management, and monorepo structure with a counter feature package, managed by Melos.

## 🚀 Features

- **Counter Functionality**: Increment, decrement, and reset operations
- **Clean Architecture**: Separated into domain, data, and presentation layers
- **Riverpod State Management**: Modern state management with code generation
- **Monorepo Structure**: Organized feature packages for scalability
- **Melos Integration**: Monorepo management and automation
- **Async Operations**: Simulated async operations with loading states
- **Error Handling**: Proper error states and retry functionality

## 🏗️ Architecture

This project follows Clean Architecture principles with a monorepo structure:

```bash
lib/
├── features/
│   └── counter/           # Counter feature package
│       ├── lib/
│       │   ├── core/      # Constants and utilities
│       │   ├── domain/    # Business logic and entities
│       │   ├── data/      # Data sources and repositories
│       │   └── presentation/ # UI and state management
│       └── pubspec.yaml
└── main.dart              # Main application entry point
```

### Layer Responsibilities

- **Domain Layer**: Business entities, repositories interfaces, and use cases
- **Data Layer**: Data models, repository implementations, and data sources
- **Presentation Layer**: UI components, pages, and Riverpod providers

## 🛠️ Tech Stack

- **Flutter**: UI framework
- **Riverpod**: State management with code generation
- **Melos**: Monorepo management and automation
- **Clean Architecture**: Separation of concerns
- **Monorepo**: Feature-based package organization

## 📦 Dependencies

### Root Project

- `flutter_riverpod`: State management
- `riverpod_annotation`: Code generation annotations
- `melos`: Monorepo management

### Counter Package

- `flutter_riverpod`: State management
- `riverpod_annotation`: Code generation annotations

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (^3.6.2)
- Dart SDK (^3.6.2)

### Installation

1. **Clone the repository**

   ```bash
   git clone <your-repo-url>
   cd riverpod_estudos
   ```

2. **Install root dependencies**

   ```bash
   flutter pub get
   ```

3. **Install counter package dependencies**

   ```bash
   cd lib/features/counter
   flutter pub get
   ```

4. **Generate code**

   ```bash
   flutter packages pub run build_runner build
   ```

5. **Run the application**

   ```bash
   cd ../../../
   flutter run
   ```

## 🔧 Development

### Melos Commands

```bash
# Install and activate Melos globally (if not already installed)
dart pub global activate melos

# Bootstrap the workspace
melos bootstrap

# Individual tasks
melos fix-format        # Format and fix all code
melos get              # get all dependencies
melos upgrade          # upgrade all packages
melos generate         # Generate code for all packages
melos clean            # Clean all packages
```

### Code Generation

The project uses Riverpod code generation. After making changes to providers:

```bash
# Using Melos (recommended)
melos generate

# Or manually
cd lib/features/counter
flutter packages pub run build_runner build
```

### Project Structure

- **Features**: Each feature is a separate package with its own `pubspec.yaml`
- **Clean Architecture**: Clear separation between business logic and UI
- **State Management**: Riverpod providers manage application state

## 📱 Usage

The app provides a simple counter interface:

- **+ Button**: Increment counter
- **- Button**: Decrement counter  
- **Reset Button**: Reset counter to zero
- **Loading States**: Visual feedback during operations
- **Error Handling**: Retry functionality on errors

## 📚 Learning Resources

- [Riverpod Documentation](https://riverpod.dev/)
- [Melos Documentation](https://melos.invertase.dev/)
- [Clean Architecture in Flutter](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html)
- [Flutter Package Development](https://docs.flutter.dev/developing-packages)

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
