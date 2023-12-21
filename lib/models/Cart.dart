import 'catelog.dart';
class CartModel {
  // catelog  fie
  CatelogModel _catelogModel =CatelogModel();
  final List<int> _itemIds = [];

  CatelogModel get catalog => _catelogModel;

  set catalog1(CatelogModel newCatalog) {
    assert(newCatalog!=null);
    _catelogModel = newCatalog;
  }

  List<Item> get items => _itemIds.map((id) => _catelogModel.getById(id)).toList();

  // Get  total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + (current.price??0) );
//  Add Item
 void add(Item item){
   _itemIds.add(item.id??0);
 }
// Remove item
void remove(Item item){
   _itemIds.remove(item.id);
}
}
