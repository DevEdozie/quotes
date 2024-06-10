class Quote {
  String author;
  String text;

  Quote({required this.author, required this.text});

  // Optional: Override toString for better readability when printing
  @override
  String toString() {
    return 'Quote(author: $author, text: $text)';
  }
}
