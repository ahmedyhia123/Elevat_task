import 'package:elevat_task/Features/home/presentation/data/models/product_model.dart';
import 'package:elevat_task/Features/home/presentation/manger/cubit/get_products_cubit.dart';
import 'package:elevat_task/Features/home/presentation/views/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {

  @override
  void initState() {
    
    super.initState();
    BlocProvider.of<GetProductsCubit>(context).getProducts();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetProductsCubit, GetProductsState>(
      builder: (context, state) {
        if (state is GetProductsSuccess) {
          List<ProductModel> products = state.products;
          return Padding(
            padding: const EdgeInsets.all(12.0), 
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 0.74,
              ),
              itemBuilder: (context, index) {
                return  ProductItem(product: products[index],);
              },
            ),
          );
        }else if(state is GetProductsFailure){
          return Center(child: Text('There is an error'));
        }else{
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
