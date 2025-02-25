name: Flutter CI/CD

on:
push:
branches:
- main  # Jab bhi "main" branch pe code push hoga, pipeline chalegi

jobs:
build:
runs-on: ubuntu-latest

steps:
- name: Checkout Code
uses: actions/checkout@v3

- name: Setup Flutter
uses: subosito/flutter-action@v2
with:
flutter-version: '3.x'

- name: Install Dependencies
run: flutter pub get

- name: Run Tests
run: flutter test  # Ye test execute karega

- name: Build APK
run: flutter build apk --release  # Release APK build karega

- name: Upload APK
uses: actions/upload-artifact@v3
with:
name: release-apk
path: build/app/outputs/flutter-apk/app-release.apk
