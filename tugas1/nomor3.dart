//list,Map,Set
void main(List<String> args) {
  //List (Biasa kita sebut Array dalam bahasa pemrograman lain)
  var isList = [21, 9, 2002, "Bandung"];
  print(isList);

  //Map (Biasa dikenal sebagai array Assosiatif dan output seperti JSON)
  var isMap = Map<String, dynamic>();
  isMap['Nama'] = 'Muhamad Rizki Darmawan';
  isMap['NPM'] = '2010631170093';
  isMap['Target IPK'] = 3.8;
  print(isMap);

  //Set (Jenis array yang value nya tidak boleh duplikat, kalo duplikat nanti dibuang salah satunya)
  var isSet = {
    'Data ke-1',
    'Data ke-2',
    'Data ke-3', //Data ke-3 diduplikat sebanyak 3x, namun di output hanya ada 1x
    'Data ke-3',
    'Data ke-3'
  };
  print(isSet);
}
