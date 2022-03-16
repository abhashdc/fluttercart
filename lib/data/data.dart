import 'package:mobx/mobx.dart';
import 'modal.dart';
part 'data.g.dart';

class Cart = _Cart with _$Cart;

abstract class _Cart with Store {
  @observable
  int counter = 1;
  @action
  increment() {
    counter++;
  }

  @observable
  ObservableList<Items> cartItems = ObservableList<Items>();

//static list
  List<Items> totalItems = [
    Items(1, 'Facial Cleanser', 10),
    Items(2, 'Toner', 20),
    Items(3, 'Face wash', 100),
    Items(4, 'Facial Moistourizer', 510),
  ];

  @action
  addToCart(int id) {
    cartItems.add(totalItems[id - 1]);
  }
}
