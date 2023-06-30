import 'package:cosmos/pages/home/logic/data/model/genre.dart';
import 'package:cosmos/pages/home/sets_details/product_detail_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../const/const.dart';
import '../../../widgets/customer_button.dart';
import '../../cart/logic/cart_bloc.dart';

class ShowModal extends StatefulWidget {
  const ShowModal({super.key, required this.products});
  final ProductDetailModel products;

  @override
  State<ShowModal> createState() => _ShowModalState();
}

class _ShowModalState extends State<ShowModal> {
  PriceModel? _selectedState;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return StatefulBuilder(
                builder:
                    (BuildContext context, StateSetter modalSheetSetState) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
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
                                  child:
                                      Image.asset('assets/images/image 2.png'),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: widget.products.prices
                                      .map((e) => CustomButton(
                                            value: e,
                                            onPressed: () {
                                              modalSheetSetState(() {
                                                _selectedState = e;
                                              });
                                            },
                                            groupValue: _selectedState,
                                          ))
                                      .toList(),
                                ),
                              ),
                              SizedBox(height: 15),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Итого:',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Visibility(
                                    visible: _selectedState != null,
                                    child: Text(
                                      _selectedState != null
                                          ? '₸' +
                                              _selectedState!.price.toString()
                                          : '₸0',
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 46,
                                    width: 163,
                                    decoration: BoxDecoration(
                                        color: Color(0xFF6EB841),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: TextButton(
                                      onPressed: () {
                                        context.read<CartBloc>().add(AddToCart(
                                            widget.products.id,
                                            _selectedState?.id ?? 0,
                                            1 
                                            ));
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
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Добавить в корзину",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600),
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
              );
            },
          );
        },
        child: Container(
          width: 335,
          height: 46,
          decoration: BoxDecoration(
              color: AppColors.primaryWhite,
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                FontAwesomeIcons.cartShopping,
                color: AppColors.primaryBottonBlue,
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                'Добавить в корзину',
                style: TextStyle(
                    color: AppColors.primaryBottonBlue,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
