part of 'get_products_cubit.dart';

sealed class GetProductsState {}

final class GetProductsInitial extends GetProductsState {}
final class GetProductsSuccess extends GetProductsState {
  final List<ProductModel> products;
  GetProductsSuccess(this.products);
}
final class GetProductsLoading extends GetProductsState {}
final class GetProductsFailure extends GetProductsState {

}
