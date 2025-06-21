# 📦 Clean Feature Generator

> A powerful Bash script that generates complete Flutter features following Clean Architecture principles with support for multiple state management solutions and testing.

## ✨ Features

- 🏗️ **Clean Architecture**: Generates proper Data → Domain → Presentation layer structure
- 🧠 **Multiple State Management**: Support for Riverpod, Bloc, and Cubit
- ❄️ **Freezed Support**: Unified immutable models and state classes
- 🧪 **Test Generation**: Complete test suite generation with proper mocking
- 📁 **Smart Naming**: Automatic conversion from natural language to proper Dart conventions
- ⚡ **Zero Configuration**: Works out of the box with sensible defaults

## 🚀 Quick Start

### Installation Steps

```bash
git clone https://github.com/jamal-and/flutter_feature_generator.git
cd flutter_feature_generator
./install.sh
source ~/.zshrc    # or source ~/.bashrc

### Basic Usage

```bash
# Generate a basic feature
cf "User Profile"

# Generate with Riverpod + Freezed + tests
cf "Shopping Cart" --riverpod --freezed --test

# Generate with Bloc + Equatable models + tests
cf "Product Details" --bloc --equatable --test
```

## 📋 Command Syntax

```bash
cf <feature_name> [state_management] [options]
```

### State Management Options
- `--riverpod` - Riverpod Notifier
- `--bloc` - Bloc pattern (Event + State + Bloc)
- `--cubit` - Cubit pattern (simplified Bloc)

### Feature Options
- `freezed` - Use Freezed for immutable models and state classes
- `--test` - Generate comprehensive test files

## 🏗️ Generated Structure

```
lib/features/your_feature/
├── data/
│   ├── datasources/
│   │   ├── your_feature_remote_datasource.dart
│   │   ├── your_feature_remote_datasource_impl.dart
│   │   ├── your_feature_local_datasource.dart
│   │   └── your_feature_local_datasource_impl.dart
│   ├── models/
│   │   └── your_feature_model.dart
│   └── repositories/
│       └── your_feature_repository_impl.dart
├── domain/
│   ├── entities/
│   │   └── your_feature_entity.dart
│   ├── repositories/
│   │   └── your_feature_repository.dart
│   └── usecases/
│       └── get_your_feature_usecase.dart
└── presentation/
    ├── controller/
    │   └── [state_management_files]
    ├── screens/
    │   └── your_feature_screen.dart
    └── widgets/
        └── your_feature_card.dart
```

## 💡 Example

### Social Media App Features

```bash
# User feed with advanced state management
cf "Social Feed" --riverpod --freezed --test

# Profile management
cf "User Profile" --bloc --test

# Chat system
cf "Chat" --cubit --freezed
```

## 🎯 State Management Patterns

### Riverpod Pattern
```dart
class UserProfileController extends Notifier<UserProfileState> {
  @override
  UserProfileState build() => const UserProfileState();

  Future<void> loadData() async {
    state = state.copyWith(isLoading: true);
    // Implementation...
  }
}
```

### Bloc Pattern
```dart
class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {
  UserProfileBloc() : super(const UserProfileState.initial()) {
    on<_FetchData>((event, emit) async {
      emit(const UserProfileState.loading());
      // Implementation...
    });
  }
}
```

### Cubit Pattern
```dart
class UserProfileCubit extends Cubit<UserProfileState> {
  UserProfileCubit() : super(const UserProfileState.initial());

  Future<void> loadData() async {
    emit(const UserProfileState.loading());
    // Implementation...
  }
}
```

## 🧪 Test Generation

When using `--test`, the script generates:

- **Unit Tests**: For all business logic components
- **Widget Tests**: For UI components
- **Integration Tests**: For complete workflows
- **Mock Classes**: Using Mocktail for clean testing

Example test structure:
```
test/features/your_feature/
├── data/
│   ├── datasources/
│   ├── models/
│   └── repositories/
├── domain/
│   ├── entities/
│   ├── repositories/
│   └── usecases/
└── presentation/
    ├── controller/
    ├── screens/
    └── widgets/
```

## 📦 Dependencies

The script automatically suggests required dependencies based on your choices:

### Core Dependencies
```yaml
dependencies:
  dio: ^5.3.2
  flutter_riverpod:   # if --riverpod
  flutter_bloc:       # if --bloc or --cubit
  freezed_annotation: # if --freezed
  json_annotation: 
```

### Dev Dependencies
```yaml
dev_dependencies:
  flutter_test:
    sdk: flutter
  mocktail: 
  bloc_test:           # if --bloc or --cubit
  build_runner:        # if using Freezed
  freezed:             # if --freezed
  json_serializable: 
```

## 🔧 Advanced Usage

### Custom Feature Names
The script intelligently handles various naming conventions:

```bash
cf "user profile"      # → user_profile (snake_case files)
cf "UserProfile"       # → user_profile (snake_case files)  
cf "User-Profile"      # → user_profile (snake_case files)
cf "User Profile API"  # → user_profile_api (handles multiple words)
```

### Build Runner Integration
For Freezed-based features, don't forget to run:
```bash
dart dart run build_runner build --delete-conflicting-outputs

```

## 🎨 Customization

The script generates production-ready code with:

- ✅ Proper error handling
- ✅ Type safety
- ✅ Null safety compliance
- ✅ Clean separation of concerns
- ✅ Testable architecture
- ✅ Industry best practices

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Inspired by Clean Architecture principles by Robert C. Martin
- Flutter community best practices
- Modern state management patterns

## 🐛 Issues & Support

Found a bug or have a feature request? Please [open an issue](https://github.com/jamal-and/flutter_feature_generator/issues).

---

<div align="center">
  <p>Made with ❤️ for the Flutter community</p>
  <p>⭐ Star this repo if it helped you!</p>
</div>
