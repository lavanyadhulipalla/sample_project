import 'dart:convert';
import 'dart:developer';

import 'package:sample_project/BreweriesData.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<List<BreweriesData>?> getBreweries() async {
    try {
      var url = Uri.parse("https://api.openbrewerydb.org/v1/breweries");
      var response = await http.get(url);
      if (response.statusCode == 200) {
        log(response.body);
        final responsebody=jsonDecode(response.body) as List;

        final allPostList= responsebody.map((e) => BreweriesData.fromJson(e)).toList();
        
        return allPostList;
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}