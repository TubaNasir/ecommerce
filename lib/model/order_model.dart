class Order {
  final int userid;
  final int orderid;
  final String placedOn, status;
  final String image;

  Order({
    required this.orderid,
    required this.userid,
    required this.image,
    required this.placedOn,
    required this.status,
  });
}

List<Order> demoOrders = [
  Order(
    orderid: 1,
    userid: 1,
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ_0CtulSwA_imJJ4nZXEIwu13VNszMaZUBaHgEXVQ&s",
    placedOn: '20-Nov-2022',
    status: 'Shipped'
  ),
  Order(
      orderid: 2,
      userid: 1,
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ_0CtulSwA_imJJ4nZXEIwu13VNszMaZUBaHgEXVQ&s",
      placedOn: '20-Nov-2022',
      status: 'Shipped'
  ),
  Order(
      orderid: 3,
      userid: 1,
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ_0CtulSwA_imJJ4nZXEIwu13VNszMaZUBaHgEXVQ&s",
      placedOn: '20-Nov-2022',
      status: 'Shipped'
  )
];