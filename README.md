Flutter Feature Generator
A simple Bash-based CLI tool to generate Clean Architecture feature folders for Flutter apps.

🛠 Installation
Clone this repo:

git clone https://github.com/YOUR_USERNAME/flutter_feature_gen.git
cd flutter_feature_gen

Run the installer:

./install.sh

Restart your terminal or reload your shell config:

source ~/.bashrc

or
source ~/.zshrc

🚀 Usage
To generate a new feature structure, just run:

cf feature-name

Examples:

cf nutrition_log
cf meal-plan

The generator supports kebab-case, snake_case, and multi-word input — and creates the appropriate PascalCase class names (e.g., MealPlan).

📁 Output Structure Example
For input meal-plan, it generates:

lib/features/meal_plan/
├── data/
│ ├── datasources/
│ │ ├── meal_plan_remote_datasource.dart
│ │ ├── meal_plan_remote_datasource_impl.dart
│ │ ├── meal_plan_local_datasource.dart
│ │ └── meal_plan_local_datasource_impl.dart
│ ├── models/meal_plan_model.dart
│ └── repositories/meal_plan_repository_impl.dart
├── domain/
│ ├── entities/meal_plan_entity.dart
│ ├── repositories/meal_plan_repository.dart
│ └── usecases/get_meal_plan_usecase.dart
├── presentation/
│ ├── screens/meal_plan_screen.dart
│ └── widgets/meal_plan_card.dart

🧠 Philosophy
This tool follows Clean Architecture principles and is optimized for Flutter developers who want to ship scalable, maintainable apps fast.
