void main() {
  try {
    int result = divide(10, 0);
    print("The resultr is: $result");
  } on UnsupportedError {
    print("Cannot divide by zero.");
  } catch (e) {
    print("An error occurred: $e");
  } finally {
    print(
        "This will always be executed, whether an exception is thrown or not.");
  }
}

int divide(int a, int b) {
  if (b == 0) {
    throw UnsupportedError;
  }
  return a ~/ b; // Integer division
}
