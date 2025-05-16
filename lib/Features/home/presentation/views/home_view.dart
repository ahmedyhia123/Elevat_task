import 'package:dio/dio.dart';
import 'package:elevat_task/Core/servises/api_service.dart';
import 'package:elevat_task/Features/home/presentation/data/repo/home_repo_impl.dart';
import 'package:elevat_task/Features/home/presentation/manger/cubit/get_products_cubit.dart';
import 'package:elevat_task/Features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: BlocProvider(
            create: (context) => GetProductsCubit(HomeRepoImpl(ApiService(Dio()))),
            child: HomeViewBody(),
          ),
        ),
      ),
    );
  }
}
