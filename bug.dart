```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data
      final jsonData = jsonDecode(response.body);
      // Use the data here
      print(jsonData);
    } else {
      // Handle error
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exception
    print('Error: $e');
    rethrow; // Re-throw the exception to be handled further up the call stack
  }
}
```