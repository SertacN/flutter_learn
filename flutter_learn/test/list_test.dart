// import 'package:collection/collection.dart';
// import 'package:flutter_full_learn/303/generic_learn.dart';
// import 'package:flutter_full_learn/product/widget/card/high_card.dart';
// import 'package:flutter_test/flutter_test.dart';

// void main() {
//   setUp(() {});
//   test('List best of', () {
//     List<GenericUser> users = [
//       const GenericUser('vb1', '11', 5),
//       const GenericUser('vb2', '11', 10),
//       const GenericUser('vb3', '11', 20)
//     ];

//     List<HighCard> highCards = users.map((e) {
//       return HighCard(items: e.name.split('').toList());
//     }).toList();

//     try {
//       final response = users.singleWhere(
//         (element) => element.findUserName('x'),
//         orElse: () {
//           return const GenericUser('name', 'id', 15);
//         },
//       );

//       print(response.name);
//     } catch (e) {
//       print(e);
//     }

//     print('${users.where((element) => element.money > 500)}'); money 500 den büyük olanları bul

//     users.addAll([const GenericUser('name', 'id', 5)]);        Direkt obje ekle 
//     users.lastWhere((element) => element.id == '5');           Sondan başlayıp id'si 5 olanı bul

//     users.take(5);                                             İlk 5 objeyi al
//     users.remove(const GenericUser('vb1', '11', 5));           Obje sil
//     users.removeAt(2);                                         2. indextekini sil
//     users.removeWhere((element) => element.id == 11);          id'si 11 olanı sil

//     users.indexOf(const GenericUser('vb1', '11', 5));
//     final result = users.indexWhere((element) => element.id == '11');  
//     if (result >= 0) {
//       users[result] = const GenericUser('a', 'b', 15);
//     }

//     users.expand((element) => [const GenericUser('a', '1 ', 15)]);
//     // users.map((e) => e.money).where((element) => element > 5);
//   });

//   test('List best of with collection', () {
//     List<GenericUser> users = [
//       const GenericUser('vb1', '11', 5),
//       const GenericUser('vb2', '11', 10),
//       const GenericUser('vb3', '11', 20)
//     ];

//     final response = users.singleWhereOrNull(
//       (element) => element.findUserName('x'),                    Arrayde x var mı, yoksa null dön
//     );

//     users.lastWhereOrNull((element) => element.id == '5');

//     users.lastOrNull;
//     users.forEachIndexed((index, element) {});                   Hem elemeni hemde kaçıncı sırada olduğunu bulur.
//     users.sample(3);                                             Rasgele 3 tane obje al
//     print(users.first == const GenericUser('vb1', '11', 5));     İlk obje buna eşit mi
//     print(users.contains(const GenericUser('vb1', '11', 5)));    arrayde bu objeden var mı?

//     users.any((element) => element.money > 5);

//     print(response);
//   });
// }