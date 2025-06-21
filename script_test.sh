#!/bin/bash

# ==================== CLEAN FEATURE GENERATOR TEST SUITE ====================
echo "Starting Test Suite..."
echo "----------------------------------------"


# ============ 1. Riverpod Combinations ============
echo "TEST GROUP 1: Riverpod Variations"
cf "Riverpod_Basic" --riverpod
cf "Riverpod_Freezed" --riverpod --freezed
cf "Riverpod_Tests" --riverpod --test
cf "Riverpod_Full" --riverpod --freezed --test
echo "----------------------------------------"

# ============ 2. BLoC Combinations ============
echo "TEST GROUP 2: BLoC Variations"
cf "Bloc_Basic" --bloc
cf "Bloc_Freezed" --bloc --freezed
cf "Bloc_Tests" --bloc --test
cf "Bloc_Full" --bloc --freezed --test
echo "----------------------------------------"

# ============ 3. Cubit Combinations ============
echo "TEST GROUP 3: Cubit Variations"
cf "Cubit_Basic" --cubit
cf "Cubit_Freezed" --cubit --freezed
cf "Cubit_Tests" --cubit --test
cf "Cubit_Full" --cubit --freezed --test
echo "----------------------------------------"

# ============ 4. Minimal Features ============
echo "TEST GROUP 4: No State Management"
cf "Minimal_Basic"
cf "Minimal_Freezed" --freezed
cf "Minimal_Tests" --test
cf "Minimal_Full" --freezed --test
echo "----------------------------------------"

# ============ 5. Edge Cases ============
echo "TEST GROUP 5: Edge Cases"
cf "Edge_Numbers123" --riverpod --freezed
cf "Edge_Hyphen-Name" --bloc --test
cf "Edge_Long Name With Spaces" --cubit --freezed
cf "Edge_X" --riverpod  # Shortest possible name
echo "----------------------------------------"

# ============ 6. Error Cases ============
echo "TEST GROUP 6: Expected Failures"
cf  # Should fail - no name
cf "Error_Conflict1" --riverpod --bloc  # Should fail
cf "Error_Conflict2" --bloc --cubit  # Should fail
cf "Error_BadFlag" --invalid-flag  # Should fail
cf --riverpod  # Should fail - no name
echo "----------------------------------------"

# ============ 7. Real-world Examples ============
echo "TEST GROUP 7: Real-world Scenarios"
cf "Real_PlayerProfile" --bloc --freezed --test
cf "Real_MatchDetails" --riverpod --freezed --test
cf "Real_AppSettings" --riverpod --test
cf "Real_Analytics" --cubit
echo "----------------------------------------"

echo "Test Suite Completed!"
echo "Check generated features in lib/features/"
echo "For Freezed features, run: dart run build_runner build"

dart run build_runner build --delete-conflicting-outputs  