#!/bin/bash

# Flutter Template Initialization Script
# Usage: ./init.sh <bundle_id> <app_name>
# Example: ./init.sh com.example.myapp "My App"

set -e  # Exit on any error

# Check if correct number of arguments provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <bundle_id> <app_name>"
    echo "Example: $0 com.example.myapp \"My App\""
    exit 1
fi

BUNDLE_ID="$1"
APP_NAME="$2"

# Validate bundle ID format (basic check)
if [[ ! $BUNDLE_ID =~ ^[a-z][a-z0-9]*(\.[a-z][a-z0-9]*)*$ ]]; then
    echo "Error: Bundle ID should be in format like 'com.example.app' (lowercase, dots separated)"
    exit 1
fi

# Create project directory name from app name (replace spaces with underscores, make lowercase)
PROJECT_DIR=$(echo "$APP_NAME" | tr '[:upper:]' '[:lower:]' | sed 's/ /_/g' | sed 's/[^a-z0-9_]//g')

# Ensure we're in the template directory
TEMPLATE_DIR=$(pwd)
TARGET_DIR="../$PROJECT_DIR"

echo "🚀 Initializing Flutter project..."
echo "📱 App Name: $APP_NAME"
echo "📦 Bundle ID: $BUNDLE_ID"
echo "📁 Project Directory: $PROJECT_DIR"
echo "🎯 Target Path: $TARGET_DIR"

# Check if target directory already exists
if [ -d "$TARGET_DIR" ]; then
    echo "❌ Error: Directory '$TARGET_DIR' already exists!"
    exit 1
fi

# Copy template to target directory
echo "📋 Copying template files..."
cp -r "$TEMPLATE_DIR" "$TARGET_DIR"

# Remove .git directory from the new project
echo "🗑️  Removing .git directory..."
rm -rf "$TARGET_DIR/.git"

# Remove init.sh from the new project (optional, as user might not need it)
rm -f "$TARGET_DIR/init.sh"

# Change to new project directory
cd "$TARGET_DIR"

echo "📦 Running flutter pub get..."
flutter pub get

# Change bundle name
echo "🔧 Changing bundle ID to: $BUNDLE_ID"
dart run change_app_package_name:main "$BUNDLE_ID"

# Change app name
echo "🏷️  Changing app name to: $APP_NAME"
dart run rename_app:main all="$APP_NAME"

# Run flutter pub get again after package changes
echo "📦 Running flutter pub get (final)..."
flutter pub get

echo ""
echo "✅ Project initialized successfully!"
echo "📁 Project location: $TARGET_DIR"
echo "🎉 You can now open the project in your IDE and start developing!"
echo ""
echo "Next steps:"
echo "  cd .."
echo "  cd $PROJECT_DIR"
echo "  flutter run"