import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoriteProvider extends ChangeNotifier {
  List<String> _imagelist= [];
  List<String> get imagelist2 => _imagelist;

  void toggleFavorite(String word) {
    final isExist = _imagelist.contains(word);
    if (isExist) {
      _imagelist.remove(_imagelist);
    } else {
      _imagelist.add(word);
    }
    notifyListeners();
  }

  bool isExist(String word) {
    final isExist = _imagelist.contains(word);
    return isExist;
  }

  void clearFavorite() {
    _imagelist = [];
    notifyListeners();
  }

  static FavoriteProvider of(
      BuildContext context, {
        bool listen = true,
      }) {
    return Provider.of<FavoriteProvider>(
      context,
      listen: listen,
    );
  }
}
