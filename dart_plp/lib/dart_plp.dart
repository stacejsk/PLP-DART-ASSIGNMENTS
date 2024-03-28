import 'dart:io';
export 'dart_plp.dart' ;

// Interface
abstract class Animal {
  void makeSound();
}

// Parent class
class LivingBeing {
  void breathe() {
    print('Breathing...');
  }
}

// Child class implementing an interface and overriding a method
class Dog extends LivingBeing implements Animal {
  Dog(String name, int age);
  @override
  void makeSound() {
    print('Woof! Woof!');
  }
}


// Class with a method that reads data from a file and initializes Dog instance
class FileReader {
  FileReader();
  dynamic readDogFromFile(String fileName) {
    try {
      File file = File(fileName);
      List<String> lines = file.readAsLinesSync();

      if (lines.length >= 2) {
        String name = lines[0];
        int age = int.parse(lines[1]);
        return Dog(name, age);
      } else {
        throw FormatException('File does not contain enough data');
      }
    } catch (e) {
      print("Error reading file: $e");
      return null;
    }
  }
}
