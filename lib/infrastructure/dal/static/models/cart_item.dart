class Cart {
  final String image;
  final String itemName;
  final String itemPrice;
  final String itemDetails;
  final String quantity;

  Cart(
    this.image,
    this.itemName,
    this.itemPrice,
    this.itemDetails,
    this.quantity,
  );
}

class CartItem {
  static var items = [
    Cart('assets/images/deals.jpg', 'Big 8', 'Tk. 800',
        '4pc Hot & Crispy & 4pc Smoky RED', '1'),
    Cart('assets/images/chicken.jpg', '6 PC Hot Wings', 'Tk. 279',
        '6 PC Hot Wings', '1'),
    Cart('assets/images/burger.jpg', 'Tandoori Zinger Burger', 'Tk. 309',
        'Tandoori Zinger Burger', '1'),
    Cart('assets/images/rice.jpg', 'Hot & Crispy Rice Bowl', 'Tk. 699',
        'Hot & Crispy Rice Bowl', '1'),
    Cart('assets/images/snacks.jpg', 'Tandoori Fries', 'Tk. 160',
        'Tandoori Fries', '1'),
    Cart('assets/images/drinks.jpg', 'Pepsi', 'Tk. 35', 'Pepsi', '1'),
    Cart('assets/images/addons.jpg', 'Spicy Mayo', 'Tk. 15', 'Spicy Mayo', '1'),
  ];
}
