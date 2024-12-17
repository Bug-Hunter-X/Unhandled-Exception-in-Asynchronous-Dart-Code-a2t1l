```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      print(jsonData);
    } else {
      // Handle HTTP errors more gracefully
      throw Exception('HTTP error: ${response.statusCode}');
    }
  } catch (e) {
    // Centralized error handling. Log the error and display a user-friendly message.
    print('Error fetching data: $e');
    // Optionally show a user-friendly error message using a state management solution.
  }
}
```