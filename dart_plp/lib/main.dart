import "dart_plp.dart" as dart_plp;

void main() {
  // Creating an instance of the Dog class
  dart_plp.Dog dog1 = dart_plp.Dog("Chuahua", 10);
  dog1.breathe();
  dog1.makeSound();

  // Create an instance of FileReader and read data from file to initialize Dog
  dart_plp.FileReader fileReader = dart_plp.FileReader();
  dart_plp.Dog? dog2 = fileReader.readDogFromFile('dart_plp/lib/dog_data.txt');

  if (dog2 != null) {
    dog2.breathe(); // Call methods from parent class
    dog2.makeSound(); // Call method from implemented interface
  } else {
    print('Failed to initialize Dog from file');
  }
}
