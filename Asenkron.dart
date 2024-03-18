void main() async {

//alttaki internettenVeri çek aksine buradaki await ile yazılan şeklinde
//bu fonksiyon çalıştırılana kadar aşağıdaki işlemler yapılmaz
//await kullandığımız zaman .then kullanmak zorunda değiliz direk değişkenlere sonuclar atanabilir
//await sayesinde işlem bitmeden diğer işlemlere geçilmediği için .then kullanımlaz .then
//bekleme sırasında diğer işlemlere devam edilmes istenildiğinde kullanılır 
//await anahtar kelimesi bulunan her fonksiyon asenkron(async) olmak zorunda
String gelenVeri = await internettenVeri();
print(gelenVeri);

//.then asenkron fonksiyon işlemi bitirdiği zaman döndürülen değeri alır
//ve üzerinde nişlem yapabilmemizi sağlar
//bu işlem beklenirken aşağıdaki işlemler yapılmaya devam eder
  internettenVeri().then((String name){
    print(name);
  }).catchError((e){
      print(e.toString());
  });


  print("asenkron sonrasi");

}

//await anahtar kelimesi bulunan her fonksiyon asenkron(async) olmak zorunda
Future<String> internettenVeri() async {
  String kullaniciadi = "Deneme";
  //3sn geçene kadar return işlemi olmaz await sayesinde
  await Future.delayed(Duration(seconds: 3));
  //değer döndürme simüle edilir
  return Future.value(kullaniciadi);
  //hatayı simüle etme
  //return Future.error(kullaniciadi);
}