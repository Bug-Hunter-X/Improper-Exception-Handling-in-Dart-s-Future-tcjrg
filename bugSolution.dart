```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      //Informative error message
      print('Error: API request failed with status code: ${response.statusCode}');
    }
  } catch (e) {
    // More descriptive error handling
    print('An error occurred while fetching data: $e');
    //Optional: Implement more sophisticated error handling based on the specific exception type
    //e.g.,  if(e is SocketException) { ... }
  }
}
```