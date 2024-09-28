# Temperature Conversion Application

## Project Overview

This project is a **Temperature Conversion** application developed using **Flutter**. The app allows users to convert temperatures between Fahrenheit and Celsius using the provided conversion formulas. The user can select one conversion type at a time (Fahrenheit-to-Celsius or Celsius-to-Fahrenheit). The app also keeps a history of all conversions performed.

## Objective

The main objective of this project is to implement a simple temperature converter that provides real-time conversions based on user input. The user selects the conversion type, enters a temperature value, and presses the **Convert** button to display the result. The project demonstrates the use of user input, radio buttons for conversion selection, and a functional history feature in the UI.

## Features

- **Two Conversion Modes**:
  - **Fahrenheit to Celsius**: \( \text{°C} = (\text{°F} - 32) \times \frac{5}{9} \)
  - **Celsius to Fahrenheit**: \( \text{°F} = \text{°C} \times \frac{9}{5} + 32 \)
- **User Input**: Users can enter the initial temperature value manually.
- **Conversion Button**: A **Convert** button calculates the converted temperature and displays the result with 2 decimal places.
- **History Feature**: All conversion operations are stored and displayed in a history section, showing both the input value and the calculated result.
  - Example:
    - **F to C**: 55.0 => 12.78
    - **C to F**: 3.5 => 38.30

## Technology Stack

- **Flutter**: A cross-platform framework for building mobile applications.
- **Dart**: The programming language used in Flutter development.
- **Android Studio/VS Code**: IDEs used for development and testing.

## Project Structure

```bash
/temperature_converter_app
├── android                # Android-specific files
├── ios                    # iOS-specific files
├── lib
│   ├── main.dart          # Main entry point for the application
│   ├── converter_screen.dart # Contains the UI and conversion logic
├── test                   # Unit tests for the conversion logic
├── pubspec.yaml           # Project dependencies
└── README.md              # Project README file
```

## Conversion Logic

The app uses the following conversion formulas:
- **Fahrenheit to Celsius**: \( \text{°C} = (\text{°F} - 32) \times \frac{5}{9} \)
- **Celsius to Fahrenheit**: \( \text{°F} = \text{°C} \times \frac{9}{5} + 32 \)

The converted values are displayed with **two decimal places** to ensure accuracy.

## User Interface

- **Radio Buttons**: Users select between Fahrenheit-to-Celsius and Celsius-to-Fahrenheit conversions. Only one conversion option can be active at any given time.
- **Input Field**: The user enters the temperature value they wish to convert.
- **Convert Button**: When pressed, the application performs the conversion and displays the result below.
- **History Section**: Previous conversions are displayed in a scrollable list, showing the original value, the conversion type, and the result.

## Installation and Setup

### Prerequisites
- **Flutter SDK**: Ensure Flutter is installed.
- **Dart SDK**: Comes with Flutter.
- **Android Studio/VS Code**: IDEs for Flutter development.

### Steps to Run the Project

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/temperature_converter_app.git
   cd temperature_converter_app
   ```

2. Install the necessary dependencies:
   ```bash
   flutter pub get
   ```

3. Run the application on a connected device or emulator:
   ```bash
   flutter run
   ```

4. Ensure that a device (physical or virtual) is connected for testing.

## Future Enhancements

- Addition of other temperature units like Kelvin.
- A graphical display of the conversion history.
- Persistent storage of conversion history using a local database or file system.

## Testing

The project includes unit tests to verify the correctness of the temperature conversion logic. Run the tests with:

```bash
flutter test
```

## Conclusion

This **Temperature Conversion** application demonstrates a basic but practical use case of user interaction and real-time data processing in Flutter. The project offers a user-friendly interface for converting temperatures between Fahrenheit and Celsius, with the added convenience of viewing conversion history.
