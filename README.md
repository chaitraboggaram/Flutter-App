# Flutter App Name
> **Note:** This repository is mainly meant for learning flutter.

## Table of Contents
1. [Prerequisites](#prerequisites)
    - [Configure Nexus 6 with Android Studio](#configure-nexus-6-with-android-studio)
    - [Install Flutter](#install-flutter)
2. [Running the App](#running-the-app)
3. [Playing around with the flutter app](#playing-around-with-the-flutter-app)
    - [Fonts](#fonts)
    - [Images](#images)
    - [Buttons](#buttons)
        - [Elevated Button](#elevated-button)
        - [Text Button](#text-button)
        - [Outlined Button](#outlined-button)
        - [Icon Button](#icon-button)
        - [Elevated Button with Icon](#elevated-button-with-icon)
    - [Icons](#icons)
        - [Regular Icon](#regular-icon)
        - [Custom Size Icon](#custom-size-icon)
        - [Colored Icon](#colored-icon)
        - [Customized Icon](#customized-icon)
    - [Container](#container)
    - [Padding and Margin](#padding-and-margin)
        - [Customizing Spacing](#customizing-spacing)
    - [Flutter Row and Column](#flutter-row-and-column)
        - [Row](#row)
        - [Column](#column)
        - [MainAxisAlignment and CrossAxisAlignment](#mainaxisalignment-and-crossaxisalignment)
    - [Quick Actions for Flutter Widgets in Android Studio](#quick-actions-for-flutter-widgets-in-android-studio)
    - [Expanded Widget](#expanded-widget)
      


## Prerequisites
Before you begin, ensure you have the following installed:

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- [Android Studio](https://developer.android.com/studio) with Flutter and Dart plugins
- [Nexus 6](https://developer.android.com/studio/run/managing-avds) device for testing

### Configure Nexus 6 with Android Studio
To configure your Nexus 6 with Android Studio for testing:

1. Connect your Nexus 6 to your computer using a USB cable.
2. Open Android Studio and go to the "Tools" menu.
3. Select "AVD Manager" to open the Android Virtual Device (AVD) Manager.
4. Click "Create Virtual Device" and choose "Nexus 6" as the device.
5. Follow the on-screen instructions to configure the virtual device settings.
6. Click "Finish" to create the virtual device.

### Install Flutter
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

# Playing around with the flutter app
For more information, refer to the [Flutter Documentation](https://flutter.dev/docs).

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

### Regular

 Icon

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


## Row and Column

In Flutter, `Row` and `Column` are essential widgets for arranging child widgets horizontally (`Row`) or vertically (`Column`). They allow you to create flexible and responsive layouts easily.

### Row

A `Row` is used to arrange child widgets in a horizontal line. Each child is laid out along the main axis (horizontal by default). You can customize the alignment, spacing, and distribution of children within the row.

```dart
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text('Item 1'),
    Text('Item 2'),
    Text('Item 3'),
  ],
)
```

### Column

A `Column` is used to arrange child widgets in a vertical line. Like `Row`, you can customize the alignment, spacing, and distribution of children within the column.

```dart
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text('Item 1'),
    Text('Item 2'),
    Text('Item 3'),
  ],
)
```

### MainAxisAlignment and CrossAxisAlignment

Both `Row` and `Column` have properties like `mainAxisAlignment` and `crossAxisAlignment` that control how children are positioned:

- `mainAxisAlignment`: Defines how children are aligned along the main axis.
- `crossAxisAlignment`: Defines how children are aligned along the cross axis.

```dart
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Text('Item 1'),
    Text('Item 2'),
    Text('Item 3'),
  ],
)
```


## Quick Actions for Flutter Widgets in Android Studio

When working on Flutter projects in Android Studio, you can efficiently manage your widgets by utilizing the Quick Actions feature. This allows you to perform actions such as moving widgets up and down or removing them without the need for manual cut, paste, or deletion.

### How to Access Quick Actions:

1. **Navigate to the Widget:** Click on the widget you want to manage within your Flutter code.
2. **Locate the Action menu:** Look for a small yellow blub icon that appears to the left of the widget, where the row numbers are displayed.
3. **Access Quick Actions:** Click on the yellow blub icon, and a menu with Quick Actions will appear.
4. **Select the Desired Action:** Choose from available Quick Actions, such as moving the widget up or down or removing it altogether.
![Alt text](IMG_0461.jpg)

The same can be found in Flutter outline as well.

### Examples of Quick Actions:
- **Move Widget Up:** Move the selected widget upwards in your code.
- **Move Widget Down:** Move the selected widget downwards in your code.
- **Remove Widget:** Quickly remove the selected widget without manually cutting, pasting, or deleting.
- **Wrap with Widget:** Wrap this widget inside another widget without having to manually change indentation.
This feature enhances the development experience by providing a convenient way to manage and rearrange widgets within your Flutter codebase directly from the code editor.

**Note:** The availability of Quick Actions may vary based on the version of Android Studio and Flutter plugin you are using.


## Expanded Widget

The `Expanded` widget in Flutter is used to make a child of a `Row`, `Column`, or `Flex` expand to fill the available space along the main axis.
Wrap the child widget with `Expanded` to make it take up the remaining space within a parent widget.

```dart
Row(
   children: [
      Expanded(
         flex: 3,
         child: Container(
            padding: EdgeInsets.all(30),
            color: Colors.blue,
            child: Text("1"),
         ),
      ),
      Expanded(
         flex: 2,
         child: Container(
            padding: EdgeInsets.all(30),
            color: Colors.orange,
            child: Text("2"),
         ),
      ),
   ],
),
```
`Expanded` helps create flexible and responsive layouts by adjusting child sizes based on available space. `flex` distributes space in provided portions.

