```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success, parse the JSON response
      final jsonData = jsonDecode(response.body);
      // Process the jsonData
    } else {
      // Handle error
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during network request or JSON decoding
    print('Error fetching data: $e');
    // Consider rethrowing the exception or handling it appropriately
    rethrow; //Rethrowing to let the calling function handle it
  }
}
```