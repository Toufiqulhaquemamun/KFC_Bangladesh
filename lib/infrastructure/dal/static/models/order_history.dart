class Order {
  final String orderNumber;
  final String dealName;
  final String itemPrice;
  final String orderDate;
  final String orderStatus;

  Order(
    this.orderNumber,
    this.dealName,
    this.itemPrice,
    this.orderDate,
    this.orderStatus,
  );
}

class OrderHistory {
  static var items = [
    Order('ORD009345', 'Big 8', 'Tk. 800', '16 June, 02:29 PM', 'Delivered'),
    Order('ORD009346', '', 'Tk. 700', '15 June, 03:29 PM', 'Shipped'),
    Order('ORD009347', '', 'Tk. 900', '12 June, 04:29 PM', 'Delivered'),
    Order('ORD009348', '', 'Tk. 600', '19 June, 05:29 PM', 'Shipped'),
    Order('ORD009349', '', 'Tk. 900', '19 June, 06:29 PM', 'Shipped'),
  ];
}
