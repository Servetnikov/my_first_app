import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/constants/app_image.dart';
import 'package:my_first_app/data/mock_data.dart';
import 'package:my_first_app/model/product_model.dart';
import 'package:my_first_app/ui/home/products/vegetable/vegetable_list_controller.dart';

class FruitsController extends GetxController {
  final searchController = TextEditingController();
  var dataProduct = <Product>[];

  bool isLoading = false;

  Future<bool> getData() async {
    isLoading = true;
    await Future.delayed(const Duration(seconds: 2));
    dataProduct = fruitsList;
    isLoading = false;
    update();
    return isLoading;
  }

  void searchMovies(String query) {
    if (query.isNotEmpty) {
      dataProduct = _fruits.where((Product movie) {
        return movie.title.contains(query);
      }).toList();
    } else {
      dataProduct = _fruits;
    }
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  final _fruits = [
    Product(
        imageName: AppImages.apple,
        title: 'pinapple',
        price: '10',
        description: ""),
    Product(
        imageName: AppImages.apple,
        title: 'apple',
        price: '10',
        description: ""),
    Product(
        imageName: AppImages.banana,
        title: 'Banan',
        price: '10',
        description: ""),
    Product(
        imageName: AppImages.orange,
        title: 'orange',
        price: '10',
        description: ""),
    Product(
        imageName: AppImages.apple,
        title: 'pinapple',
        price: '10',
        description: ""),
    Product(
        imageName: AppImages.apple,
        title: 'apple',
        price: '10',
        description: ""),
    Product(
        imageName: AppImages.banana,
        title: 'Banan',
        price: '10',
        description: ""),
    Product(
        imageName: AppImages.orange,
        title: 'orange',
        price: '10',
        description: "")
  ];
}
