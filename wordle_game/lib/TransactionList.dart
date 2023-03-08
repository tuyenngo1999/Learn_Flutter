import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'transaction.dart';

class TransactionList extends StatelessWidget {
  List<Transaction> transactions;

  TransactionList({required this.transactions});

  ListView _buildListView() {
    int cntBuild = 0;
    return ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: (index - 1) % 2 == 0 ? Colors.green : Colors.teal,
            elevation: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Padding(padding: EdgeInsets.all(10)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Padding(padding: EdgeInsets.only(top: 10)),
                    Text(
                      transactions[index].content,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                    const Padding(padding: EdgeInsets.only(bottom: 5)),
                    Text(
                      'CreatDate : ${DateFormat.yMd().format(transactions[index].createdDate)}',
                      style: const TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    const Padding(padding: EdgeInsets.only(bottom: 10)),
                  ],
                ),
                Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                            border: Border.all(color: Colors.white,width: 2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        child: Text(
                          '\$${transactions[index].amount}',
                          style: const TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                        const Padding(padding: EdgeInsets.only(right: 10)),
                    ],
                  )
                ),
              ],
            ),
          );
          }
        );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(height: 500, child: this._buildListView());
  }
}
