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
cf feature_name
```

This will generate:

```
lib/features/feature_name/
├── data/
│   ├── datasources/
│   │   ├── feature_name_remote_datasource.dart
│   │   └── feature_name_remote_datasource_impl.dart
│   │   ├── feature_name_local_datasource.dart
│   │   └── feature_name_local_datasource_impl.dart
│   ├── models/
│   │   └── feature_name_model.dart
│   └── repositories/
│       └── feature_name_repository_impl.dart
├── domain/
│   ├── entities/
│   │   └── feature_name_entity.dart
│   ├── repositories/
│   │   └── feature_name_repository.dart
│   └── usecases/
│       └── get_feature_name_usecase.dart
├── presentation/
│   ├── screens/
│   │   └── feature_name_screen.dart
│   ├── widgets/
│   │   └── feature_name_card.dart
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
