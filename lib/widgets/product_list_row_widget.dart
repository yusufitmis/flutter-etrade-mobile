import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductListRowWidget extends StatelessWidget {
  final Product product;

  ProductListRowWidget(this.product);

  @override
  Widget build(BuildContext context) {
    return buildProductItemCard(context);
  }

  Widget buildProductItemCard(BuildContext context) {
    return InkWell(
      child: Card(
        child: Column(
          children: [
            Container(
              child: Image.network(
                "https://images.unsplash.com/photo-1473093295043-cdd812d0e601?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                fit: BoxFit.cover,  // Görselin düzgün şekilde sığmasını sağlamak için BoxFit.cover kullanabilirsiniz
              ),
              height: 130.0, // Sabit yükseklik
              width: MediaQuery.of(context).size.width / 2, // Ekran genişliğinin yarısı
            ),
            SizedBox(height: 8.0),  // Görsel ile yazılar arasında boşluk bırakmak için SizedBox
            // Ürün adını metin taşmasını engellemek için TextOverflow.ellipsis kullanın
            Text(
              product.productName ?? "Ürün Adı Yok",  // Null kontrolü
              style: TextStyle(fontWeight: FontWeight.bold),
              maxLines: 1,  // Sadece 1 satır gösterilecek
              overflow: TextOverflow.ellipsis,  // Taşan metni üç nokta ile keser
            ),
            // Ürün fiyatını düzgün bir şekilde göstermek için string interpolasyonu kullanabilirsiniz
            Text(
              "${product.unitPrice}₺",
              style: TextStyle(color: Colors.grey, fontSize: 18.0),
              maxLines: 1,  // Fiyat metninin de 1 satır olması sağlanır
              overflow: TextOverflow.ellipsis,  // Fiyat taşarsa üç nokta ekler
            ),
          ],
        ),
      ),
    );
  }
}
