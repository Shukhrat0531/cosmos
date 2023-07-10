import 'package:auto_route/auto_route.dart';
import 'package:cosmos/pages/cart/logic/cart_bloc.dart';
import 'package:cosmos/pages/home/sets_details/show_wrapper.dart';
import 'package:cosmos/pages/orders/bloc/ored_model.dart';
import 'package:cosmos/routes/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../widgets/customer_button.dart';
import '../logic/data/model/genre.dart';
import 'product_detail_model.dart';

void showCartModal(BuildContext context, CartBloc bloc,
    PriceModel? initialPrice, ProductDetailModel products) {
  showModalBottomSheet(
      context: context,
      builder: (context) {
        return CartBottomModal(
          bloc: bloc,
          selectedState: initialPrice,
          products: products,
        );
      });
}

class CartBottomModal extends StatefulWidget {
  const CartBottomModal(
      {super.key,
      required this.bloc,
      required this.selectedState,
      required this.products});
  final CartBloc bloc;
  final PriceModel? selectedState;
  final ProductDetailModel products;

  @override
  State<CartBottomModal> createState() => _CartBottomModalState();
}

class _CartBottomModalState extends State<CartBottomModal> {
  PriceModel? _selected;

  @override
  void initState() {
    _selected = widget.selectedState;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ShowBlocWrapper(
      child: StatefulBuilder(
        builder: (BuildContext context, StateSetter modalSheetSetState) {
          return Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(50)),
            height: MediaQuery.of(context).size.height * .50,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Выберите количество суток',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: Icon(Icons.close)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 96,
                          width: 96,
                          child: Image.network(widget.products.images[0]),
                        ),
                        Text(
                          "Сет 4: PlayStation 5",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: widget.products.prices
                              .map((e) => CustomButton(
                                    value: e,
                                    onPressed: () {
                                      modalSheetSetState(() {
                                        _selected = e;
                                      });
                                    },
                                    groupValue: _selected,
                                  ))
                              .toList(),
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Итого:',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w900),
                          ),
                          Visibility(
                            visible: _selected != null,
                            child: Text(
                              _selected != null
                                  ? '₸' + _selected!.price.toString()
                                  : '₸0',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w900),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 46,
                            width: 163,
                            decoration: BoxDecoration(
                                color: Color(0xFF6EB841),
                                borderRadius: BorderRadius.circular(10)),
                            child: TextButton(
                              onPressed: () {
                                if (_selected == null) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text("выберите котегорию")),
                                  );
                                } else {
                                  context.router.push(GetOrder(item: [
                                    CreateOrderProductModel(
                                        widget.products.id,
                                        _selected?.id ?? 0,
                                         1,
                                         widget.products.name,
                                         widget.products.images[0],
                                         _selected?.price??0,
                                         _selected?.daysCount??1

                                    )
                                  ]));
                                 
                                }

                                //   if (_selected != null) {
                                //   widget.bloc.add(AddToCart(
                                //       widget.products.id, _selected!.id, 1));
                                //   // Здесь вы можете добавить дополнительную логику для перехода к экрану оформления заказа
                                // }
                              },
                              child: Text(
                                "Оформить сейчас",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Container(
                            height: 46,
                            width: 163,
                            decoration: BoxDecoration(
                                color: Color(0xFF3175ED),
                                borderRadius: BorderRadius.circular(10)),
                            child: BlocListener<CartBloc, CartState>(
                              listener: (context, state) {
                                if (state is CartListFailure) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content:
                                              Text(state.message ?? 'Error ')));
                                }
                              },
                              child: TextButton(
                                onPressed: () {
                                  context.read<CartBloc>().add(AddToCart(
                                      widget.products.id,
                                      _selected?.id ?? 0,
                                      1));
                                },
                                child: Text(
                                  "Добавить в корзину",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
