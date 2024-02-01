# Flutter App Name

## Overview
This Flutter app is designed for learning flutter.

## Prerequisites
Before you begin, ensure you have the following installed:

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- [Android Studio](https://developer.android.com/studio) with Flutter and Dart plugins
- [Nexus 6](https://www.google.com/nexus/6/) device for testing

## Configure Nexus 6 with Android Studio
To configure your Nexus 6 with Android Studio for testing:

1. Connect your Nexus 6 to your computer using a USB cable.
2. Open Android Studio and go to the "Tools" menu.
3. Select "AVD Manager" to open the Android Virtual Device (AVD) Manager.
4. Click "Create Virtual Device" and choose "Nexus 6" as the device.
5. Follow the on-screen instructions to configure the virtual device settings.
6. Click "Finish" to create the virtual device.

## Install Flutter
To install Flutter on your development environment, follow these steps:

1. Download the Flutter SDK from the [official Flutter website](https://flutter.dev/docs/get-started/install).
2. Extract the downloaded ZIP file to a location on your machine.
3. Add the `flutter/bin` directory to your system's PATH variable.
   Example (Linux/Mac): 
   ```bash
   export PATH="$PATH:`path_to_flutter_directory`/flutter/bin"
   ```
   Example (Windows):
   ```powershell
   $env:Path += ";C:\path_to_flutter_directory\flutter\bin"
   ```
4. Open a new terminal and run `flutter doctor` to check for any dependencies that need to be installed or configured.
5. Follow the instructions provided by `flutter doctor` to resolve any issues.

## Running the App
1. Open a terminal and navigate to the project directory.
2. Run the command `flutter pub get` to install the dependencies.
3. Connect your Nexus 6 to your computer.
4. Run the command `flutter devices` to verify that your Nexus 6 is recognized.
5. Run the command `flutter run -d <device_id>` to deploy the app to your Nexus 6.

That's it! Your Flutter app should now be running on your Nexus 6.


## Fonts:

1. **Download Font from Google Fonts:**
   - Visit [Google Fonts](https://fonts.google.com/).
   - Select and download the desired font.

2. **Organize Font Files:**
   - Create a 'fonts' folder under your Flutter project directory.
   - Drag and drop the downloaded .ttf file into the 'fonts' folder.

3. **Update pubspec.yaml:**
   - Open the `pubspec.yaml` file in your Flutter project.
   - Uncomment the 'fonts' section (likely around line 77).
   - Update the configuration, for example:
     ```yaml
     fonts:
       - family: Oswald
         fonts:
           - asset: fonts/Oswald-VariableFont_wght.ttf
     ```

## Images:

1. **Create Assets Folder:**
   - Create a folder named 'assets' under your Flutter project directory.

2. **Save Image Files:**
   - Save local image files (e.g., .jpg, .png) in the 'assets' folder.

3. **Update pubspec.yaml:**
   - Open the `pubspec.yaml` file in your Flutter project.
   - Uncomment the 'assets' section (likely around line 62).
   - Update the configuration, for example:
     ```yaml
     assets:
       - assets/
     ```

4. **Access Images:**
   - For Network Images: 
     ```dart
     Image.network("URL") 
     ```
   - For Local Images:
     ```dart
     Image.asset("ImagePath") 
     ```


## Buttons

### Elevated Button

```dart
ElevatedButton(
  onPressed: () {
    // Your callback here
  },
  child: Text('Elevated Button'),
)
```

### Text Button

```dart
TextButton(
  onPressed: () {
    // Your callback here
  },
  child: Text('Text Button'),
)
```

### Outlined Button

```dart
OutlinedButton(
  onPressed: () {
    // Your callback here
  },
  child: Text('Outlined Button'),
)
```

### Icon Button

```dart
IconButton(
  onPressed: () {
    // Your callback here
  },
  icon: Icon(Icons.star),
)
```

### Elevated Button with Icon

```dart
ElevatedButton.icon(
  onPressed: () {
    // Your callback here
  },
  icon: Icon(Icons.mail),
  label: Text('Send Email'),
)
```

## Icons

### Regular Icon

```dart
Icon(Icons.favorite)
```

### Custom Size Icon

```dart
Icon(Icons.star, size: 30.0)
```

### Colored Icon

```dart
Icon(Icons.mail, color: Colors.blue)
```

### Customized Icon

```dart
Icon(
  Icons.settings,
  color: Colors.green,
  size: 40.0,
)
```


## Container

A `Container` is a box model that can contain child widgets and allows you to customize its appearance, such as color, padding, margin, and more.

```dart
Container(
  width: 100,
  height: 100,
  color: Colors.blue,
  child: Text('Hello, Flutter!'),
)
```

## Padding and Margin

`Padding` is used to add space around the child widget within a container. It is particularly useful for creating inner spacing.

```dart
Padding(
  padding: EdgeInsets.all(16.0),
  child: Container(
    color: Colors.green,
    child: Text('Inner Padding'),
  ),
)
```

`Margin` is used to add space around the entire container. It affects the spacing between the container and its parent or neighboring widgets.

```dart
Container(
  margin: EdgeInsets.all(8.0),
  color: Colors.red,
  child: Text('Outer Margin'),
)
```

## Customizing Spacing

You can customize the spacing by adjusting the values within `EdgeInsets`:

- `EdgeInsets.all(value)` adds the same value of space on all sides.
- `EdgeInsets.symmetric(horizontal: value, vertical: value)` allows different horizontal and vertical spacing.
- `EdgeInsets.only(top: value, left: value, bottom: value, right: value)` provides precise control over individual sides.

Experiment with these properties to achieve the desired layout and spacing in your Flutter app.

For more information, refer to the [Flutter Documentation](https://flutter.dev/docs).
```

