import 'package:flutter/material.dart' show TextEditingController, TextField;

class Quote {
  String quote;
  bool edit;
  String author;
  Quote(this.quote, this.author, [this.edit = true]);

  TextField getquote(Quote e,[edit = true]) {
    return TextField(
      controller: TextEditingController(text: e.quote),
      readOnly: edit,
    );
  }
}
