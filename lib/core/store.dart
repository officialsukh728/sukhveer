import 'package:learning2/models/Cart.dart';
import 'package:learning2/models/catelog.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore {
  CatelogModel catelog= CatelogModel() ;
  CartModel cart = CartModel();
  MyStore() {
    catelog = CatelogModel();
    cart = CartModel();
    cart.catalog = catelog;
  }
}

