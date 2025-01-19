# Flutter E-Ticaret Mobil Uygulaması | Flutter E-commerce Mobile App

Bu proje, Flutter kullanarak geliştirilmiş basit bir e-ticaret mobil uygulamasıdır. Kullanıcılar, ürünler ve kategoriler hakkında bilgi edinebilir ve uygulama backend'inden veri çekebilir. Backend olarak `db.json` dosyasından ürün ve kategori verileri alınmaktadır. <br>
This project is a simple e-commerce mobile app developed with Flutter. Users can view information about products and categories and fetch data from the app's backend. Product and category data is fetched from the `db.json` file in the backend.

![Uygulama Ekran Görüntüsü](https://github.com/yusufitmis/flutter-etrade-mobile/blob/main/main.PNG)


## Özellikler | Features

- Ürünlerin ve kategorilerin listelenmesi | Listing products and categories
- Kategorilere göre ürün filtreleme | Filtering products by categories
- Ürünlerin detaylı bilgilerini görüntüleme | Viewing detailed product information
- Basit ve kullanıcı dostu bir arayüz | Simple and user-friendly interface

## Teknolojiler | Technologies

- **Flutter**: Uygulama geliştirme framework'ü | Application development framework
- **Dart**: Flutter ile geliştirilmiş programlama dili | Programming language used with Flutter
- **JSON**: Backend verilerinin saklandığı format | Data storage format for the backend
- **HTTP**: Backend'e veri istekleri göndermek için kullanılan kütüphane | Library used for sending HTTP requests to the backend

## Proje Yapısı | Project Structure

- `data/`
  - `product_api.dart`: Ürün verilerini API üzerinden çeker ve yönetir. | Fetches and manages product data from the API.
  - `category_api.dart`: Kategori verilerini API üzerinden çeker ve yönetir. | Fetches and manages category data from the API.
  
- `models/`
  - `product.dart`: Ürün verilerini temsil eden model sınıfı. | Model class representing product data.
  - `category.dart`: Kategori verilerini temsil eden model sınıfı. | Model class representing category data.
  
- `screens/`
  - `main_screen.dart`: Uygulamanın ana ekranı. Ürünler ve kategoriler burada listelenir. | Main screen of the app where products and categories are listed.
  
- `widget/`
  - `product_list_widget.dart`: Ürünlerin listesini gösteren widget. | Widget that displays a list of products.
  - `product_list_row_widget.dart`: Her bir ürün için satır halinde gösterilen widget. | Widget that displays a row for each product.


## Kurulum | Installation

1. Flutter SDK'sını [resmi web sitesinden](https://flutter.dev) indirip kurun. | Install Flutter SDK from the [official website](https://flutter.dev).
2. Bu projeyi bilgisayarınıza klonlayın: | Clone this project to your computer:

   ```bash
   git clone https://github.com/kullaniciadi/eticaret-uygulamasi.git
