import 'package:flutter/material.dart';
import '../providers/profavorite_provider.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    final imagelist2 = provider.imagelist2;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
      ),
      body: ListView.builder(
        itemCount: imagelist2.length,
        itemBuilder: (context, index) {
          final imagelist = imagelist2[index];
          return ListTile(
            title: Text(imagelist),
            trailing: IconButton(
              onPressed: () {
                provider.toggleFavorite(imagelist);
              },
              icon: provider.isExist(imagelist)
                  ? const Icon(Icons.favorite, color: Colors.red)
                  : const Icon(Icons.favorite_border),
            ),
          );
        },
      ),
    );
  }
}
