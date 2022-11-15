import 'package:ecommerce/checkout/checkout.dart';
import 'package:ecommerce/widgets/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../success/success.dart';
import '../widgets/customAppBar.dart';
import '../widgets/layout.dart';
import 'product_model.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  late List<Product> cartList;
  @override
  void initState() {
  cartList = [
  Product(
    id: 1,
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ_0CtulSwA_imJJ4nZXEIwu13VNszMaZUBaHgEXVQ&s",
    title: "Wireless Controller for PS4™ nsadfk akjdnaksj kjands",
    price: 1000,
    description: "This is a red shirt. Material is agdjd dlfk skrn fjrndf erfr kenedf resjfnr",
    storeID: 1,
    qty: 1
  ),
  Product(
      id: 2,
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ_0CtulSwA_imJJ4nZXEIwu13VNszMaZUBaHgEXVQ&s",
      title: "Wireless Controller for PS4™",
      price: 1000,
      description: "This is a red shirt. Material is agdjd",
      storeID: 1,
      qty: 1
  ),
  Product(
      id: 3,
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ_0CtulSwA_imJJ4nZXEIwu13VNszMaZUBaHgEXVQ&s",
      title: "Wireless Controller for PS4™",
      price: 1000,
      description: "This is a red shirt. Material is agdjd",
      storeID: 1,
      qty: 1
  ),
  ];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Cart",
        backButton: false,
      ),
      //backgroundColor: Colors.grey.shade200,
      body: 
        Stack(
          children:[
          Layout(
            widget: 
              Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: cartList.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: CartCard(
                                  product: cartList[index],
                                  cartList: cartList,
                                  onCartChanged: () {
                                    setState(() {});
                                  },
                                ),
                              );
                            },
                          ),
                          Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            elevation: 2,
                            child: Container(
                              decoration: BoxDecoration(
                              border: Border.all(
                                color: SecondaryColor,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Order Summary: ',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium,
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                    const Divider(
                                      color: SecondaryColor,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Product1: ',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium,
                                          ),
                                          Text(
                                            'Rs. 1500',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Product2: ',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium,
                                          ),
                                          Text(
                                            'Rs. 1200',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium,
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Divider(
                                      color: SecondaryColor,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Total:',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium
                                                ?.copyWith(
                                                    fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            'Rs 2700',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium
                                                ?.copyWith(
                                                    fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push( 
                                MaterialPageRoute(builder: (context) => const Checkout())
                              );
                            }, 
                            child: const Text("Checkout")
                          ),
                          const SizedBox(height: 100),
                        ]
                      ),
                    ),
                  ),
                ],
              )
            ),
            BottomNavBar()
          ]
        )
    );
  }
}

class CartCard extends StatefulWidget {

  const CartCard({Key? key, required this.product, required this.cartList, required this.onCartChanged}) : super(key: key);//required this.actualProduct}) : super(key: key);

  final List<Product> cartList;
  final Product product;
  final VoidCallback onCartChanged;
  //final Product actualProduct;
  @override
  // ignore: no_logic_in_create_state
  State<CartCard> createState() => _CartCardState(cartList,onCartChanged);
}

class _CartCardState extends State<CartCard> {
  
  final List<Product> cartList;
  final VoidCallback onCartChanged;

  _CartCardState(this.cartList, this.onCartChanged);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child:  ListTile(
        leading: Image.network(widget.product.image),
        title: Text(widget.product.title),
        subtitle: Text("Rs. ${widget.product.price}"),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [ 
            IconButton(
            onPressed: () {
              setState(() {
                widget.product.qty--;
                //widget.actualProduct.qty--;
                if (widget.product.qty < 1) {
                  cartList.remove(widget.product);
                }
              });
              onCartChanged();
            },
            icon: const Icon(Icons.remove),
            ),
            Text("${widget.product.qty}"),
            IconButton(
            onPressed: () {
              setState(() {
                widget.product.qty++;
              });
              onCartChanged();
            },
            icon: const Icon(Icons.add),),
          ]) 
        )
      );
    }
  }

