import 'base.dart';

void main(List<String> arguments) {
  var object = Base1();
}

class Base {
  int? a;
  Base([
    this.a,
  ]);

  void printA() => print(a);
}

abstract class AbstractBase {
  int? b;
  AbstractBase([this.b]);

  void printB() => print(b);

  void abstractPrint(); //abstract method
}

class A with TimeStamp implements Base, AbstractBase {
  @override
  int? a;

  @override
  int? b;

  @override
  void abstractPrint() {
    // TODO: implement abstractPrint
  }

  @override
  void printA() {
    // TODO: implement printA
  }

  @override
  void printB() {
    // TODO: implement printB
  }
}

class B extends Base /*,AbstractBase */ with TimeStamp {
  void printFromSuper() => super.printA();
}

class C extends Base with TimeStamp implements AbstractBase {
  void printFromSuper() => super.printA();
  void printTimestamp() => super.whatIsToday();

  @override
  int? b;

  @override
  void printB() {
    // TODO: implement printB
  }

  @override
  void abstractPrint() {
    // TODO: implement abstractPrint
  }
}

mixin TimeStamp {
  void whatIsToday() => print(DateTime.now());
}

class Stack<T> {
  List<T> _stack = [];

  void push(T item) => _stack.add(item);
  T pop() => _stack.removeLast();
}
