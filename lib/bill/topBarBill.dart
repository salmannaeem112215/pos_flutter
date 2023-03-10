import 'package:flutter/material.dart';
import 'package:pos_flutter_arronium/provider/billItems.dart';
import 'package:pos_flutter_arronium/provider/items.dart';
import 'package:provider/provider.dart';
import 'package:searchfield/searchfield.dart';

class TopBarBill extends StatefulWidget {
  TopBarBill({
    Key? key,
    required this.topBarHeight,
  }) : super(key: key);

  final double topBarHeight;
  bool _isByName = true;

  @override
  State<TopBarBill> createState() => _TopBarBillState();
}

class _TopBarBillState extends State<TopBarBill> {
  void setIsByName(bool flag) {
    setState(() {
      widget._isByName = flag;
    });
  }

  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final itemsData = Provider.of<Items>(context);
    final billItemsData = Provider.of<BillItems>(context);
    final items = itemsData.items;

    return Container(
      width: double.infinity,
      height: widget.topBarHeight,
      color: Theme.of(context).backgroundColor,
      child: Stack(
        children: [
          Container(
            color: Theme.of(context).backgroundColor,
            padding: const EdgeInsets.fromLTRB(200, 2, 0, 0),
            child: SearchField(
              searchStyle: TextStyle(
                color: Colors.white,
              ),
              suggestionState: Suggestion.hidden,
              suggestionAction: SuggestionAction.unfocus,
              suggestions: items
                  .map((e) => SearchFieldListItem(
                        widget._isByName ? e.name : e.barcode,
                        child: Container(
                          height: 30,
                          color: Theme.of(context).backgroundColor,
                          padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                e.barcode + ":  " + e.name,
                                style: TextStyle(color: Colors.white60),
                              ),
                              Text(
                                e.price.toString() + ' RS',
                                style: TextStyle(color: Colors.white60),
                              ),
                            ],
                          ),
                        ),
                      ))
                  .toList(),
              textInputAction: TextInputAction.none,
              controller: _searchController,
              hint: (widget._isByName)
                  ? 'Search By Product Name'
                  : 'Search By Product Barcode',
              maxSuggestionsInViewPort: 10,
              itemHeight: 30,
              onSuggestionTap: (x) {
                billItemsData.addBillItem(x.searchKey, true);
                print('hi');
                _searchController.clear();
              },
              marginColor: Color.fromARGB(255, 243, 237, 237),
            ),
          ),
          Container(
            width: 200,
            padding: const EdgeInsets.fromLTRB(20, 5, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () => setIsByName(false),
                        icon: Icon(
                          Icons.numbers,
                          color: (!widget._isByName)
                              ? Color(0xff1BA1E2)
                              : Colors.white60,
                        )),
                    SizedBox(width: 20),
                    IconButton(
                        onPressed: () => setIsByName(true),
                        icon: Icon(
                          Icons.abc,
                          color: (widget._isByName)
                              ? Color(0xff1BA1E2)
                              : Colors.white60,
                        )),
                  ],
                ),
                Icon(Icons.search, color: Colors.white60),
              ],
            ),
          )
        ],
      ),
    );
  }
}
