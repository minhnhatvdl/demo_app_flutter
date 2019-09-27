import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addNewTransaction;

  NewTransaction(this.addNewTransaction);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  bool isNumeric(String str) {
    if (str == null) {
      return false;
    }
    return double.tryParse(str) != null;
  }

  void handleAddNewTransaction() {
    final title = titleController.text.trim();
    final amount = isNumeric(amountController.text.trim())
        ? double.parse(amountController.text)
        : -1;
    if (title.isEmpty || amount.isNegative) return;

    widget.addNewTransaction(
        titleController.text, double.parse(amountController.text));
    // close top screen
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              keyboardType: TextInputType.number,
            ),
            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
              onPressed: handleAddNewTransaction,
            )
          ],
        ),
      ),
    );
  }
}
