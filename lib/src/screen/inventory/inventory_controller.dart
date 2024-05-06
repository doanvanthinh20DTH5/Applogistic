import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InventoryController extends GetxController {
  TextEditingController searchController = TextEditingController();

  void updateInventory() {
    String searchTerm = searchController.text;
  }
}