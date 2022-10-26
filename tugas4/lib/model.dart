class Hotel {
  final String title;
  final String description;
  final double rating;
  final String gambar;
  final String telp;

  const Hotel({
    required this.title,
    required this.description,
    required this.rating,
    required this.gambar,
    required this.telp,
  });
}

const List<Hotel> listHotel = [
  Hotel(
      title: "Arya Hotel",
      description:
          "Jl. Siliwangi Jl. Tlk. Jambe Utara No.Selatan, Kadipaten, Kec. Kadipaten, Kabupaten Majalengka, Jawa Barat 45452",
      rating: 4.1,
      gambar: "gambar/arya.jpg",
      telp: "(0233) 6540085"),
  Hotel(
      title: "Fitra Hotel",
      description:
          "Jl. K.H.Abdul Halim No.88, Munjul, Kec. Majalengka, Kabupaten Majalengka, Jawa Barat 45418",
      rating: 4.8,
      gambar: "gambar/fitra.jpg",
      telp: "(0233) 8890342"),
  Hotel(
      title: "Garden Hotel",
      description:
          "Jl. K.H.Abdul Halim No.1, Munjul, Kec. Majalengka, Kabupaten Majalengka, Jawa Barat 45418",
      rating: 4.4,
      gambar: "gambar/garden.jpg",
      telp: "(0233) 8886285"),
  Hotel(
      title: "Noni Hotel",
      description:
          "Jl. Ahmad Yani, Majalengka Wetan, Kec. Majalengka, Kabupaten Majalengka, Jawa Barat 45411",
      rating: 3.8,
      gambar: "gambar/Noni.jpg",
      telp: "(0233) 8811285"),
  Hotel(
      title: "Puri Elsas Hotel",
      description:
          "Belakang UNMA, Jl. Pemuda No.44, Majalengka Kulon, Kec. Majalengka, Kabupaten Majalengka, Jawa Barat 45418 ",
      rating: 3.4,
      gambar: "gambar/puri.jpg",
      telp: "(0233) 8291055"),
];
