import 'package:flutter/material.dart';

import 'package:pos_flutter_arronium/provider/items.dart';
import '../model/item.dart';
import '../model/billItem.dart';
import 'package:provider/provider.dart';

class BillItems with ChangeNotifier {
  final List<BillItem> _billItems = [];
  int _selectedItem = -1;

  int get selectedItem {
    return _selectedItem;
  }

  set setSelectedItem(int i) {
    _selectedItem = i;
    notifyListeners();
  }

  double getTotalAmount() {
    double totalAmount = 0;
    billItems.forEach((element) {
      totalAmount += element.price * element.qty;
    });
    return totalAmount;
  }

  List<BillItem> get billItems {
    return _billItems;
  }

  int isItemPresent(String n) {
    int present = -1;
    for (int i = 0; i < _billItems.length; i++) {
      if (_billItems[i].name == n) {
        present = i;
        break;
      }
    }
    return present;
  }

  void addBillItem(String n, bool isName) {
    final items = Items();
    final Item item =
        (isName) ? items.findByName(n) as Item : items.findByBarcode(n) as Item;
    int index = isItemPresent(n);
    if (index != -1) {
      _billItems[index].qty++;
      _selectedItem = index;
    } else {
      _billItems.add(BillItem(
          barcode: item.barcode,
          name: item.name,
          price: item.price,
          qty: 1,
          selected: false,
          index: 0));
      _selectedItem = _billItems.length - 1;
    }

    notifyListeners();
  }

  void deleteBillItem() {
    print('Delete Bill Item');
    if (_selectedItem != -1) {
      billItems.removeAt(_selectedItem);
      if (_selectedItem == billItems.length) _selectedItem--;
      notifyListeners();
    }
  }

  void deleteAllItems() {
    _billItems.clear();
    notifyListeners();
  }

  void billCompleted() {
    _billItems.clear();
    _selectedItem = -1;
  }
}
