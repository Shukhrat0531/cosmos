import 'package:cosmos/pages/home/logic/data/model/genre.dart';
import 'package:cosmos/pages/home/sets_details/cart_modal_bottom.dart';
import 'package:cosmos/pages/home/sets_details/product_detail_model.dart';
import 'package:cosmos/pages/home/sets_details/show_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../const/const.dart';
import '../../../widgets/customer_button.dart';
import '../../cart/logic/cart_bloc.dart';

class ShowModal extends StatelessWidget {
  const ShowModal({super.key, required this.products});
  final ProductDetailModel products;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: () {
          showCartModal(context, context.read<CartBloc>(), null, products);
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
