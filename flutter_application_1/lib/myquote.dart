import 'package:flutter/material.dart' show TextEditingController, TextField;

class Quote {
  String quote;
  bool edit;
  String author;
  Quote(this.quote, this.author, [this.edit = true]);

  TextField getquote(Quote e) {
    return TextField(
      controller: TextEditingController(text: e.quote),
      readOnly: e.edit,
    );
  }
}
