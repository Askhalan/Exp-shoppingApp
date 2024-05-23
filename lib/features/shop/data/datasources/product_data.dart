import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:fake_store/features/shop/data/models/prduct_model.dart';

//----------------------------- INTERFACE -----------------------------
abstract interface class ProductDataSource {
  Future<List<ProductModel>> getAllProducts();
}

//--------------------------- IMPLEMENTATION --------------------------

class ProductDataSourceImpl extends ProductDataSource {
  @override
  Future<List<ProductModel>> getAllProducts() async {
    log("Entered ProductDataSourceImpl");
    try {
      //------- Fetching the data from API
      final response =
          await http.get(Uri.parse('https://fakestoreapi.com/products'));

      if (response.statusCode == 200) {
        Iterable data = json.decode(response.body);
        log(data.toString()); 
        //------- Converting the response data into model_class & returning

        List<ProductModel> tempList = data.map((model) {
          return ProductModel.fromJson(model);
        }).toList();
        log("completed ProductDataSourceImpl");
log(tempList.toString());
        return tempList;
      } else {
        throw Exception(
            'Failed to load products. Status code: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}






  // Future<dynamic> checklogin(String? user, String? password) async {
  //   Response res = await http.post(
  //       Uri.parse('https://fakestoreapi.com/auth/login'),
  //       headers: {"Content-Type": "application/json"},
  //       body: jsonEncode(<String, String>{
  //         "username": user.toString(),
  //         "password": password.toString(),
  //         "id": "3"
  //       }));
  //   return res;
  // }