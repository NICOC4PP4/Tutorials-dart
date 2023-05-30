import "dart:io";

main() {
  // Navigate to /bin folder
  Directory.current = "bin";

  // Open write_here.txt inside /bin for appending
  final file = File("write_here.txt");
  final sink = file.openWrite(mode: FileMode.append);

  // Write to the file
  sink.write("Hello, World!\n");

  // Close the file
  sink.close();

  // Read the file
  final contents = file.readAsStringSync();
  print(contents);
}
