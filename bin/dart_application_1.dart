void main() {
  // String firstName = 'Daniel';
  // int age = 17;
  // print('Hi I\'m $firstName and I\'m $age');

  // dynamic dyn = '1';
  // dyn = 2;
  // dyn = 3.33;
  // dyn = false;

  // int a = 20, b = 5;
  // print('+ : ${a + b}');
  // print('- : ${a - b}');
  // print('/ : ${(a / b).toInt()}');
  // print('~/ : ${a ~/ b}');
  // print('* : ${a * b}');
  // print('% : ${a % b}');

  // int a = 11;
  // int result = a >= 6 ? 15 : 25;
  // print(result);

  // var array = [1, 2, 3, 4, 5, 6];
  // array.add(7);
  // array.add(8);
  // array.add(9);
  // array.add(10);
  // array.addAll([11, 12, 13, 14, 15]);
  // array.remove(4); //удаляет переменую по значению
  // array.removeAt(0); //удаляет переменую по index
  // array.removeWhere(
  //     (element) => element < 10); //удаляет элементы по заданому условию
  // print(array);
  // var set = {1,1,2,3,4,5,6};//Set<int> сохраняет только уникальные значение

  var array = [1, 2, 3, 4, 5, 6];
  for (var element in array) {
    print(element);
  } //foreach in java

  array.forEach((el) {
    print(el);
  });
}
