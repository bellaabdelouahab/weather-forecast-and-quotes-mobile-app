import 'package:flutter/material.dart';

class Quote {
  TextField? quote;
  String? author;
  Quote(String quote, String author, bool edit=false) {
    this.quote = TextField(
      controller: TextEditingController(text: quote),
      readOnly: edit,
    );
    this.author = "JJJJ";
  }
}

// Quote f = Quote("d", "|d");
