import 'dart:async';
import 'package:http/http.dart' show Client;
import 'dart:convert';
import '../models/item_model.dart';

class MovieApiProvider {
	Client client = Client();
	final _apiKey = 'dbb36df165db1a2c2f28c87050fb4fbc';

	Future<ItemModel> fetchMovieList() async {
		print("entered");
		final response = await client.get("http://api.themoviedb.org/3/movie/popular?api_key=$_apiKey");
		print(response.body.toString());
		if(response.statusCode == 20) {
			return ItemModel.fromJson(json.decode(response.body));
		} else {
			throw Exception('Faled to load post');
		}
	}
}
