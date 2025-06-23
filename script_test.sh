#!/bin/bash

# ==================== CLEAN FEATURE GENERATOR TEST SUITE ====================
echo "Starting Test Suite..."
echo "----------------------------------------"


# ============ 1. Riverpod Combinations ============
echo "TEST GROUP 1: Riverpod Variations"
flutter_feature_generator "Riverpod_Basic" --riverpod
flutter_feature_generator "Riverpod_Freezed" --riverpod --freezed
flutter_feature_generator "Riverpod_Tests" --riverpod --test
flutter_feature_generator "Riverpod_Full" --riverpod --freezed --test
echo "----------------------------------------"

# ============ 2. BLoC Combinations ============
echo "TEST GROUP 2: BLoC Variations"
flutter_feature_generator "Bloc_Basic" --bloc
flutter_feature_generator "Bloc_Freezed" --bloc --freezed
flutter_feature_generator "Bloc_Tests" --bloc --test
flutter_feature_generator "Bloc_Full" --bloc --freezed --test
echo "----------------------------------------"

# ============ 3. Cubit Combinations ============
echo "TEST GROUP 3: Cubit Variations"
flutter_feature_generator "Cubit_Basic" --cubit
flutter_feature_generator "Cubit_Freezed" --cubit --freezed
flutter_feature_generator "Cubit_Tests" --cubit --test
flutter_feature_generator "Cubit_Full" --cubit --freezed --test
echo "----------------------------------------"

# ============ 4. Minimal Features ============
echo "TEST GROUP 4: No State Management"
flutter_feature_generator "Minimal_Basic"
flutter_feature_generator "Minimal_Freezed" --freezed
flutter_feature_generator "Minimal_Tests" --test
flutter_feature_generator "Minimal_Full" --freezed --test
echo "----------------------------------------"

# ============ 5. Edge Cases ============
echo "TEST GROUP 5: Edge Cases"
flutter_feature_generator "Edge_Numbers123" --riverpod --freezed
flutter_feature_generator "Edge_Hyphen-Name" --bloc --test
flutter_feature_generator "Edge_Long Name With Spaces" --cubit --freezed
flutter_feature_generator "Edge_X" --riverpod  # Shortest possible name
echo "----------------------------------------"

# ============ 6. Error Cases ============
echo "TEST GROUP 6: Expected Failures"
flutter_feature_generator  # Should fail - no name
flutter_feature_generator "Error_Conflict1" --riverpod --bloc  # Should fail
flutter_feature_generator "Error_Conflict2" --bloc --cubit  # Should fail
flutter_feature_generator "Error_BadFlag" --invalid-flag  # Should fail
flutter_feature_generator --riverpod  # Should fail - no name
echo "----------------------------------------"

# ============ 7. Real-world Examples ============
echo "TEST GROUP 7: Real-world Scenarios"
flutter_feature_generator "Real_PlayerProfile" --bloc --freezed --test
flutter_feature_generator "Real_MatchDetails" --riverpod --freezed --test
flutter_feature_generator "Real_AppSettings" --riverpod --test
flutter_feature_generator "Real_Analytics" --cubit
echo "----------------------------------------"

echo "Test Suite Completed!"
echo "Check generated features in lib/features/"
echo "For Freezed features, run: dart run build_runner build"

dart run build_runner build --delete-conflicting-outputs  