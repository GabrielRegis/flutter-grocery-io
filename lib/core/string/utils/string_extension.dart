extension StringExtension on String {
  bool search(String query) => toLowerCase().contains(query.toLowerCase());
}
