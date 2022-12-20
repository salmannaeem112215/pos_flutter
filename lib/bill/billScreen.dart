import 'package:flutter/material.dart';
import './billSection.dart';
import './sideBar.dart';
import './topBarBill.dart';

import '../model/item.dart';
import '../model/billItem.dart';

class BillScreen extends StatefulWidget {
  // BillScreen({Key? key}) : super(key: key);
  final double _sideBarWidth = 200;
  final double _topBarHeight = 50;
  final double _bottomBarHeight = 110;

  final List<Item> _itemList = [
    Item(
      barcode: '100001',
      name: 'Chemistry 12 PTB',
      price: 111150,
      cost: 125,
      qty: 20,
      lQW: 2,
    ),
    Item(
      barcode: '100002',
      name: 'Physics 12 PTB',
      price: 150,
      cost: 125,
      qty: 20,
      lQW: 2,
    ),
    Item(
      barcode: '100003',
      name: 'Maths 12 PTB',
      price: 150,
      cost: 125,
      qty: 20,
      lQW: 2,
    ),
    Item(
      barcode: '100004',
      name: 'Computer 12 PTB',
      price: 150,
      cost: 125,
      qty: 20,
      lQW: 2,
    ),
    Item(
      barcode: '100005',
      name: 'Biology 12 PTB',
      price: 150,
      cost: 125,
      qty: 20,
      lQW: 2,
    ),
    Item(
      barcode: '100006',
      name: 'English 12 PTB',
      price: 150,
      cost: 125,
      qty: 20,
      lQW: 2,
    ),
    Item(
      barcode: '100007',
      name: 'Urdu 12 PTB',
      price: 150,
      cost: 125,
      qty: 20,
      lQW: 2,
    ),
    Item(
      barcode: '100008',
      name: 'Islamiyat 12 PTB',
      price: 150,
      cost: 125,
      qty: 20,
      lQW: 2,
    ),
    Item(
      barcode: '100009',
      name: 'PakStudies 12 PTB',
      price: 150,
      cost: 125,
      qty: 20,
      lQW: 2,
    ),
    Item(
      barcode: '100010',
      name: 'Chemistry 11 PTB',
      price: 150,
      cost: 125,
      qty: 20,
      lQW: 2,
    ),
    Item(
      barcode: '100011',
      name: 'Physics 11 PTB',
      price: 150,
      cost: 125,
      qty: 20,
      lQW: 2,
    ),
    Item(
      barcode: '100012',
      name: 'Maths 11 PTB',
      price: 150,
      cost: 125,
      qty: 20,
      lQW: 2,
    ),
    Item(
      barcode: '100013',
      name: 'Computer 11 PTB',
      price: 150,
      cost: 125,
      qty: 20,
      lQW: 2,
    ),
    Item(
      barcode: '100014',
      name: 'Biology 11 PTB',
      price: 150,
      cost: 125,
      qty: 20,
      lQW: 2,
    ),
    Item(
      barcode: '100015',
      name: 'English 11 PTB',
      price: 150,
      cost: 125,
      qty: 20,
      lQW: 2,
    ),
    Item(
      barcode: '100016',
      name: 'Urdu 11 PTB',
      price: 150,
      cost: 125,
      qty: 20,
      lQW: 2,
    ),
    Item(
      barcode: '100017',
      name: 'Islamiyat 11 PTB',
      price: 150,
      cost: 125,
      qty: 20,
      lQW: 2,
    ),
    Item(
      barcode: '100018',
      name: 'PakStudies 11 PTB',
      price: 150,
      cost: 125,
      qty: 20,
      lQW: 2,
    ),
    Item(
      barcode: '100019',
      name: 'Chemistry 10 PTB',
      price: 150,
      cost: 125,
      qty: 20,
      lQW: 2,
    ),
    Item(
      barcode: '100020',
      name: 'Physics 10 PTB',
      price: 150,
      cost: 125,
      qty: 20,
      lQW: 2,
    ),
    Item(
      barcode: '100021',
      name: 'Maths 10 PTB',
      price: 150,
      cost: 125,
      qty: 20,
      lQW: 2,
    ),
    Item(
      barcode: '100022',
      name: 'Computer 10 PTB',
      price: 150,
      cost: 125,
      qty: 20,
      lQW: 2,
    ),
    Item(
      barcode: '100023',
      name: 'Biology 10 PTB',
      price: 150,
      cost: 125,
      qty: 20,
      lQW: 2,
    ),
    Item(
      barcode: '100024',
      name: 'English 10 PTB',
      price: 150,
      cost: 125,
      qty: 20,
      lQW: 2,
    ),
    Item(
      barcode: '100025',
      name: 'Urdu 10 PTB',
      price: 150,
      cost: 125,
      qty: 20,
      lQW: 2,
    ),
    Item(
      barcode: '100026',
      name: 'Islamiyat 10 PTB',
      price: 150,
      cost: 125,
      qty: 20,
      lQW: 2,
    ),
    Item(
      barcode: '100027',
      name: 'PakStudies 10 PTB',
      price: 150,
      cost: 125,
      qty: 20,
      lQW: 2,
    ),
    Item(
      barcode: '100028',
      name: 'Chemistry 9 PTB',
      price: 150,
      cost: 125,
      qty: 20,
      lQW: 2,
    ),
    Item(
      barcode: '100029',
      name: 'Physics 9 PTB',
      price: 150,
      cost: 125,
      qty: 20,
      lQW: 2,
    ),
    Item(
      barcode: '100030',
      name: 'Maths 9 PTB',
      price: 150,
      cost: 125,
      qty: 20,
      lQW: 2,
    ),
    Item(
      barcode: '100031',
      name: 'Computer 9 PTB',
      price: 150,
      cost: 125,
      qty: 20,
      lQW: 2,
    ),
    Item(
      barcode: '100032',
      name: 'Biology 9 PTB',
      price: 150,
      cost: 125,
      qty: 20,
      lQW: 2,
    ),
    Item(
      barcode: '100033',
      name: 'English 9 PTB',
      price: 150,
      cost: 125,
      qty: 20,
      lQW: 2,
    ),
    Item(
      barcode: '100034',
      name: 'Urdu 9 PTB',
      price: 150,
      cost: 125,
      qty: 20,
      lQW: 2,
    ),
    Item(
      barcode: '100035',
      name: 'Islamiyat 9 PTB',
      price: 150,
      cost: 125,
      qty: 20,
      lQW: 2,
    ),
    Item(
        barcode: '100036',
        name: 'Past Paper Chemistry 12 PTB',
        price: 100,
        qty: 10,
        cost: 75,
        lQW: 2),
    Item(
        barcode: '100037',
        name: 'Past Paper Physics 12 PTB',
        price: 100,
        qty: 10,
        cost: 75,
        lQW: 2),
    Item(
        barcode: '100038',
        name: 'Past Paper Maths 12 PTB',
        price: 100,
        qty: 10,
        cost: 75,
        lQW: 2),
    Item(
        barcode: '100039',
        name: 'Past Paper Computer 12 PTB',
        price: 100,
        qty: 10,
        cost: 75,
        lQW: 2),
    Item(
        barcode: '100040',
        name: 'Past Paper Biology 12 PTB',
        price: 100,
        qty: 10,
        cost: 75,
        lQW: 2),
    Item(
        barcode: '100041',
        name: 'Past Paper English 12 PTB',
        price: 100,
        qty: 10,
        cost: 75,
        lQW: 2),
    Item(
        barcode: '100042',
        name: 'Past Paper Urdu 12 PTB',
        price: 100,
        qty: 10,
        cost: 75,
        lQW: 2),
    Item(
        barcode: '100043',
        name: 'Past Paper Islamiyat 12 PTB',
        price: 100,
        qty: 10,
        cost: 75,
        lQW: 2),
    Item(
        barcode: '100045',
        name: 'Past Paper PakStudies 12 PTB',
        price: 100,
        qty: 10,
        cost: 75,
        lQW: 2),
    Item(
        barcode: '100046',
        name: 'Past Paper Chemistry 11 PTB',
        price: 100,
        qty: 10,
        cost: 75,
        lQW: 2),
    Item(
        barcode: '100047',
        name: 'Past Paper Physics 11 PTB',
        price: 100,
        qty: 10,
        cost: 75,
        lQW: 2),
    Item(
        barcode: '100048',
        name: 'Past Paper Maths 11 PTB',
        price: 100,
        qty: 10,
        cost: 75,
        lQW: 2),
    Item(
        barcode: '100049',
        name: 'Past Paper Computer 11 PTB',
        price: 100,
        qty: 10,
        cost: 75,
        lQW: 2),
    Item(
        barcode: '100050',
        name: 'Past Paper Biology 11 PTB',
        price: 100,
        qty: 10,
        cost: 75,
        lQW: 2),
    Item(
        barcode: '100051',
        name: 'Past Paper English 11 PTB',
        price: 100,
        qty: 10,
        cost: 75,
        lQW: 2),
    Item(
        barcode: '100052',
        name: 'Past Paper Urdu 11 PTB',
        price: 100,
        qty: 10,
        cost: 75,
        lQW: 2),
    Item(
        barcode: '100053',
        name: 'Past Paper Islamiyat 11 PTB',
        price: 100,
        qty: 10,
        cost: 75,
        lQW: 2),
    Item(
        barcode: '100054',
        name: 'Past Paper PakStudies 11 PTB',
        price: 100,
        qty: 10,
        cost: 75,
        lQW: 2),
    Item(
        barcode: '100055',
        name: 'Past Paper Chemistry 10 PTB',
        price: 100,
        qty: 10,
        cost: 75,
        lQW: 2),
    Item(
        barcode: '100056',
        name: 'Past Paper Physics 10 PTB',
        price: 100,
        qty: 10,
        cost: 75,
        lQW: 2),
    Item(
        barcode: '100057',
        name: 'Past Paper Maths 10 PTB',
        price: 100,
        qty: 10,
        cost: 75,
        lQW: 2),
    Item(
        barcode: '100058',
        name: 'Past Paper Computer 10 PTB',
        price: 100,
        qty: 10,
        cost: 75,
        lQW: 2),
    Item(
        barcode: '100059',
        name: 'Past Paper Biology 10 PTB',
        price: 100,
        qty: 10,
        cost: 75,
        lQW: 2),
    Item(
        barcode: '100060',
        name: 'Past Paper English 10 PTB',
        price: 100,
        qty: 10,
        cost: 75,
        lQW: 2),
    Item(
        barcode: '100061',
        name: 'Past Paper Urdu 10 PTB',
        price: 100,
        qty: 10,
        cost: 75,
        lQW: 2),
    Item(
        barcode: '100062',
        name: 'Past Paper Islamiyat 10 PTB',
        price: 100,
        qty: 10,
        cost: 75,
        lQW: 2),
    Item(
        barcode: '100063',
        name: 'Past Paper PakStudies 10 PTB',
        price: 100,
        qty: 10,
        cost: 75,
        lQW: 2),
    Item(
        barcode: '100064',
        name: 'Past Paper Chemistry 9 PTB',
        price: 100,
        qty: 10,
        cost: 75,
        lQW: 2),
    Item(
        barcode: '100065',
        name: 'Past Paper Physics 9 PTB',
        price: 100,
        qty: 10,
        cost: 75,
        lQW: 2),
    Item(
        barcode: '100066',
        name: 'Past Paper Maths 9 PTB',
        price: 100,
        qty: 10,
        cost: 75,
        lQW: 2),
    Item(
        barcode: '100067',
        name: 'Past Paper Computer 9 PTB',
        price: 100,
        qty: 10,
        cost: 75,
        lQW: 2),
    Item(
        barcode: '100068',
        name: 'Past Paper Biology 9 PTB',
        price: 100,
        qty: 10,
        cost: 75,
        lQW: 2),
    Item(
        barcode: '100069',
        name: 'Past Paper English 9 PTB',
        price: 100,
        qty: 10,
        cost: 75,
        lQW: 2),
    Item(
        barcode: '100070',
        name: 'Past Paper Urdu 9 PTB',
        price: 100,
        qty: 10,
        cost: 75,
        lQW: 2),
    Item(
        barcode: '100071',
        name: 'Past Paper Islamiyat 9 PTB',
        price: 100,
        qty: 10,
        cost: 75,
        lQW: 2),
    Item(
        barcode: '100072',
        name: 'Past Paper PakStudies 9 PTB',
        price: 100,
        qty: 10,
        cost: 75,
        lQW: 2),
  ];

  final List<BillItem> _billItem = [];
  @override
  State<BillScreen> createState() => _BillScreenState();
}

class _BillScreenState extends State<BillScreen> {
  void _addItemInBill(String n, bool isName) {
    int count = 0;
    widget._itemList.forEach((element) {
      if ((isName ? element.name : element.barcode) == n) {
        setState(() {
          if (widget._billItem.length >= 1) {
            widget._billItem.last.selected = false;
          }
          widget._billItem.add(
            BillItem(
                barcode: element.barcode,
                name: element.name,
                price: element.price,
                qty: 1,
                index: count),
          );
        });
        return;
      }
      count++;
    });
  }

  void _deleteItem() {
    setState(() {
      widget._billItem.removeWhere((element) => element.selected == true);
      if (widget._billItem.length >= 1) widget._billItem.last.selected = true;
    });
  }

  void _deleteOrder() {
    setState(() {
      widget._billItem.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          TopBarBill(
            topBarHeight: widget._topBarHeight,
            itemList: widget._itemList,
            addItemInList: _addItemInBill,
          ),
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                BillSection(
                  bottomBarHeight: widget._bottomBarHeight,
                  billItem: widget._billItem,
                  deleteOrder: _deleteOrder,
                ),
                SideBar(
                  sideBarWidth: widget._sideBarWidth,
                  deleteItem: _deleteItem,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
