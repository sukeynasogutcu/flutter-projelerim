#  Ders Listesi (Derslerim)

Bu proje, Flutter kullanılarak geliştirilmiş, kullanıcıların derslerini dinamik bir şekilde ekleyip yönetebildiği bir uygulama parçası örneği

## Özellikler

* **Ders Ekleme:** Kullanıcı dostu bir arayüzle listeye anında ders eklenebilir.
* **Rastgele İkon Atama:** Eklenen her ders için `dart:math` kütüphanesi kullanılarak listeden rastgele bir akademik ikon atanır.
* **Ders Silme:** Liste üzerinden istenilen ders tek bir dokunuşla kaldırılabilir.
* **Koyu Tema (Dark Mode):** `Material Design` koyu tema standartlarına uygun, göz yormayan arayüz tasarımı.
* **Dinamik Liste:** `ListView.builder` kullanılarak performanslı ve akıcı bir liste deneyimi sunulur.

## Kullanılan Teknolojiler ve Yapılar

* **Flutter & Dart:** Uygulamanın temel framework ve dili.
* **StatefulWidget:** Uygulama içindeki ders listesinin güncelliğini korumak için `setState` yönetimi.
* **Controllers:** Giriş alanındaki metni kontrol etmek için `TextEditingController`.
* **Responsive Layout:** `SafeArea`, `Expanded` ve `Padding` widget'ları ile farklı ekran boyutlarına uyum.

##  Proje Yapısı

```text
lib/
└── main.dart  # Tüm uygulama mantığı ve UI kodunun bulunduğu ana dosya.
