import 'package:bloc/bloc.dart';
import 'package:elevat_task/Features/home/presentation/data/models/product_model.dart';
import 'package:elevat_task/Features/home/presentation/domin/repo/home_repo.dart';

part 'get_products_state.dart';

class GetProductsCubit extends Cubit<GetProductsState> {
  GetProductsCubit(this.homeRepo) : super(GetProductsInitial());
  final HomeRepo homeRepo;

  Future<void> getProducts() async {
    emit(GetProductsLoading());
    var result = await homeRepo.getGetProducts();
    result.fold(
      (l) => emit(GetProductsFailure()),
      (r) => emit(GetProductsSuccess(r)),
    );
  }
}
