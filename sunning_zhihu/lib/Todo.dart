/*
dart.math 是一个 Dart 核心库，其余的还有诸如 dart:core，dart:async，dart:convert 和 dart:collection 这样的核心库
 */
import 'dart:math';

class Bicycle {
  int cadence;
  int _speed;

  int get speed => _speed;
  int gear;

  Bicycle(this.cadence, this._speed, this.gear);

  void printContent() {
    print("cadence=$cadence  _speed=$_speed   gear = $gear");
  }
}

//abstract class Shape {
//  num get area;
//}

class Circle implements Shape {
  final num radius;

  Circle(this.radius);

  @override
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;

  Square(this.side);

  num get area => pow(side, 2);
}

//选项 1：创建一个顶层的方法
Shape shapeFactory(String type) {
  if (type == 'circle') return Circle(2);
  if (type == 'square') return Square(2);
  throw 'Can\'t create $type';
}

//选项2 ：创建一个工厂模式的构造方法
abstract class Shape {
  factory Shape(String type) {
    if (type == 'circle') return Circle(2);
    if (type == 'square') return Square(2);
    throw 'Can\'t create $type';
  }

  num get area;
}

/*
    main() 方法是 Dart 的主方法，如果你需要访问命令行传递过来的参数，可以使用 main(List<String> args 方法。
    main() 方法存在于最外层的作用域，在 Dart 中你可以在类之外编写代码，变量、方法、存取方法都可以独立于类之外维持生命周期。
    之前的 Java 示例中使用了 private 作为声明成员变量私有性的标记，而在 Dart 中并不是这样，你将在"第三步：增加一个只读的变量"中学习更多有关可访问特性的知识。
    无论是 main() 还是 Bicycle 类都声明为 public 的，默认情况下都是 public 的，在 Dart 中没有诸如 public、private、protected 这样的关键词。
    Dart 使用了 2 个字符长度作为缩进， dartfmt 作为 Dart 的格式化工具可以让你不用去关心 Dart 中的空格问题。
 */
//void main() {
////  var bike = Bicycle(2, 0, 1);
////  /*
////  在 Dart 2 中，new 关键字变成了可选的。
////  如果你确信某个变量的值不会再发生改变，你可以使用 final 来代替 var
////   */
////  bike.printContent();
//
////  final circle = Circle(2);
////  final square = Square(2);
////  print(circle.area);
////  print(square.area);
//  Shape('circle');
//}

//接口的实现
//Dart 语言并没有提供 interface 关键字，但是每一个类都隐式地定义了一个接口。
class CircleMock implements Circle {
  num area;
  num radius;
}

// Dart 中的函数式编程

String scream(int length) => "A${'a' * length}h!";

main() {
  final values = [1, 2, 3, 5, 10, 50];
//  for (var length in values) {
//    print(scream(length));
//  }
//  values.map(scream).forEach(print);
  values.skip(1).take(3).map(scream).forEach(print);

}
