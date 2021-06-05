class CoffeList {
  String nama;
  String harga;
  String deskripsi;
  String imageAsset;
 
  CoffeList({
    this.nama,
    this.harga,
    this.deskripsi,
    this.imageAsset,
  });
}

List<CoffeList> coffeList = [
  CoffeList(
    nama: 'Americano',
    harga: '10000',
    deskripsi:
        'Americano yang memiliki rasa pahit, asam serta tanpa rasa karena disajikan tanpa menggunakan gula, sehingga rasanya cenderung ringan dan tawar.',
    imageAsset: 'images/americano.jpg',
  ),
  CoffeList(
    nama: 'Espresso',
    harga: '12000',
    deskripsi:
        'Espresso, adalah ekstrak dari biji kopi yang diproses dengan mesin tekanan tinggi. Oleh karena itu, bisa dibilang bahwa espresso adalah saripati dari biji kopi berupa secangkir kopi cair yang padat dan kental dalam single shot cup atau double shot cup.',
    imageAsset: 'images/espresso.jpg',
  ),
  CoffeList(
    nama: 'Cappuccino',
    harga: '15000',
    deskripsi:
        'Cappucino terbuat dari kopi hitam dan perpaduan susu. Namun yang membedakan adalah tanpa tambahan cokelat, serta diberikan busa dari bahan dasar susu. Sehingga bisa diberikan berupa latte art di atas minuman tersebut yang berbahan busa susu.',
    imageAsset: 'images/capucinno.jpg',
  ),
  CoffeList(
    nama: 'Latte',
    harga: '15000',
    deskripsi:
        'Latte pada dasarnya ialah kopi susu. Latte diberi foam dari susu yang sudah di-steam. Kadar susunya paling banyak, barista menyebut komposisinya dengan very milky coffee.',
    imageAsset: 'images/latte.jpg',
  ),
  CoffeList(
    nama: 'Moccacino',
    harga: '15000',
    deskripsi:
        'Moccacino merupakan minuman yang terdiri dari bahan berupa susu, kopi dan cokelat.',
    imageAsset: 'images/moccacino.jpg',
  ),
];