import 'dart:io';

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
void main() {
  // Creating an instance of the Dog class
  Dog dog1 = Dog("Chuahua", 10);
  dog1.breathe();
  dog1.makeSound();

  // Create an instance of FileReader and read data from file to initialize Dog
  FileReader fileReader = FileReader();
  Dog? dog2 = fileReader.readDogFromFile('plp_dart/lib/dog_data.txt');

  if (dog2 != null) {
    dog2.breathe(); // Call methods from parent class
    dog2.makeSound(); // Call method from implemented interface
  } else {
    print('Failed to initialize Dog from file');
  }
}

