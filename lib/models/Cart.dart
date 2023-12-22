import 'package:learning2/core/store.dart';
import 'package:velocity_x/velocity_x.dart';

import 'catelog.dart';

class CartModel {
  // catelog  fie1
  CatelogModel _catelogModel = CatelogModel();

  List<int> _itemIds = [];

  CatelogModel get catalog => _catelogModel;

  set catalog(CatelogModel newCatalog) {
    _catelogModel = newCatalog;
  }

  List<Item> get items =>
      _itemIds.map((id) => _catelogModel.getById(id)).toList();

  /// Get  total price
  num get totalPrice => items.fold(
        0,
        (total, current) => total + (current.price ?? 0),
      );
}

class AddMutation extends VxMutation<MyStore> {
  final Item item;

  AddMutation({required this.item});

  @override
  perform() {
    store!.cart._itemIds.add(item.id ?? 0);
  }
}

class RemoveMutation extends VxMutation<MyStore> {
  final Item item;

  RemoveMutation({required this.item});

  @override
  perform() {
    store!.cart._itemIds.remove(item.id ?? 0);
  }
}
