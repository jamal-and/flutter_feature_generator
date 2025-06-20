# 🏗️ Flutter Feature Generator

A lightweight Bash script to generate Flutter **feature folders** using **Clean Architecture** — fast, consistent, and ready for scaling.

---

## 🚀 Install

```bash
git clone https://github.com/jamal-and/flutter_feature_generator.git
cd flutter_feature_generator
./install.sh
source ~/.zshrc    # or source ~/.bashrc
```

---

## ✅ Usage

```bash
cf nutrition_log
```

This will generate:

```
lib/features/nutrition_log/
├── data/
│   ├── datasources/
│   │   ├── nutrition_log_remote_datasource.dart
│   │   └── nutrition_log_remote_datasource_impl.dart
│   │   ├── nutrition_log_local_datasource.dart
│   │   └── nutrition_log_local_datasource_impl.dart
│   ├── models/
│   │   └── nutrition_log_model.dart
│   └── repositories/
│       └── nutrition_log_repository_impl.dart
├── domain/
│   ├── entities/
│   │   └── nutrition_log_entity.dart
│   ├── repositories/
│   │   └── nutrition_log_repository.dart
│   └── usecases/
│       └── get_nutrition_log_usecase.dart
├── presentation/
│   ├── screens/
│   │   └── nutrition_log_screen.dart
│   ├── widgets/
│   │   └── nutrition_log_card.dart
│   └── controller/
└── ...
```

Each file includes boilerplate code for models, repositories, data sources, use cases, and UI widgets.

---

## 🔥 What It Does

- Instantly generates folders and files for a complete feature
- Implements Clean Architecture best practices
- Includes abstract and implementation layers
- Adds a shortcut command: `cf`

---

MIT License
