import 'package:flutter/material.dart';
import 'dart:math';
import 'package:intl/intl.dart';

import '../providers/orders.dart' as ord;

class OrderItem extends StatefulWidget {
  final ord.OrderItem order;

  OrderItem(
    this.order,
  );

  @override
  State<OrderItem> createState() => _OrderItemState();
}

class _OrderItemState extends State<OrderItem>
    with SingleTickerProviderStateMixin {
  var _expanded = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.easeIn,
      duration: Duration(
        milliseconds: 300,
      ),
      height: _expanded
          ? min(
              widget.order.products.length * 20.0 + 140,
              250,
            )
          : 100,
      child: Expanded(
        child: Card(
          margin: const EdgeInsets.all(
            10.0,
          ),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  '\$${widget.order.amount}',
                ),
                subtitle: Text(
                  DateFormat(
                    'dd/MM/yyyy hh:mm',
                  ).format(
                    widget.order.dateTime,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(
                    _expanded ? Icons.expand_less : Icons.expand_more,
                  ),
                  onPressed: () {
                    setState(
                      () {
                        _expanded = !_expanded;
                      },
                    );
                  },
                ),
              ),
              AnimatedContainer(
                duration: Duration(
                  milliseconds: 300,
                ),
                height: _expanded
                    ? min(
                        widget.order.products.length * 17.0 + 15,
                        150,
                      )
                    : 0,
                child: ListView(
                  children: widget.order.products
                      .map(
                        (prod) => Expanded(
                          child: Container(
                            padding: EdgeInsets.only(
                              bottom: 1,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  prod.title,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '${prod.quantity} x\$${prod.price}',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
