Future<List> search(String query) async {
  // qidiruvga tegishli xizmatlarni chaqirish va natijalarni olish
  var results = await apiCall(query);

  // qidiruv natijalarini saqlash uchun ro'yxat yaratish
  List searchResults = [];

  // qidiruv natijalarini ro'yxatga qo'shish
  for (var result in results) {
    searchResults.add(result);
  }

  // qidiruv natijalarini qaytarish
  return searchResults;
}

// Xizmatlarni chaqirish uchun funksiya
Future<dynamic> apiCall(String query) async {
  var url = 'https://api.example.com/search?q=$query';
  var http;
  var json;
  var response = await http.get(url);
  var data = json.decode(response.body);
  return data['results'];
}


