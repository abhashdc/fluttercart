// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Cart on _Cart, Store {
  final _$counterAtom = Atom(name: '_Cart.counter');

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  final _$cartItemsAtom = Atom(name: '_Cart.cartItems');

  @override
  ObservableList<Items> get cartItems {
    _$cartItemsAtom.reportRead();
    return super.cartItems;
  }

  @override
  set cartItems(ObservableList<Items> value) {
    _$cartItemsAtom.reportWrite(value, super.cartItems, () {
      super.cartItems = value;
    });
  }

  final _$_CartActionController = ActionController(name: '_Cart');

  @override
  dynamic increment() {
    final _$actionInfo =
        _$_CartActionController.startAction(name: '_Cart.increment');
    try {
      return super.increment();
    } finally {
      _$_CartActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addToCart(int id) {
    final _$actionInfo =
        _$_CartActionController.startAction(name: '_Cart.addToCart');
    try {
      return super.addToCart(id);
    } finally {
      _$_CartActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
counter: ${counter},
cartItems: ${cartItems}
    ''';
  }
}
