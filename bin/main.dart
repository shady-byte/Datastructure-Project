import 'package:test/test.dart';
import 'dart:math';
import 'dart:async';
import 'queueClass.dart';
import 'stackClass.dart';

void main() {
  Queue queue;
  Stack stack;
  var count=1;
  Random random = new Random();

  setUp(() {
    queue=Queue();
    stack=Stack();
  });

  void queueTesting() {
    group('queue testing cases', (){
      test('queue.enqueue() is a test for function enqueue', () {
        var value= random.nextInt(100000);
        expect(queue.enqueue(value), equals((true)));
      });

      test('queue.dequeue() is a test for function dequeue', () {
        var value= random.nextInt(100000);
        queue.enqueue(value);
        expect(queue.dequeue(), equals((value)));
      });

      test('queue.getLength() is a test for function to get length ', () {
        List<int> values=[random.nextInt(100000),random.nextInt(100000),random.nextInt(100000)];
        queue.enqueue(values[0]);
        queue.enqueue(values[1]);
        queue.enqueue(values[2]);
        expect(queue.getLength(), equals((values.length)));
      });

      test('queue.peek() is a test for function to return head of queue ', () {
        List<int> values=[random.nextInt(100000),random.nextInt(100000),random.nextInt(100000)];
        queue.enqueue(values[0]);
        queue.enqueue(values[1]);
        queue.enqueue(values[2]);
        expect(queue.peek(), equals((values[0])));
      });

      test('queue.isEmpty() is a test for function if it is empty or not ', () {
        List<int> values=[random.nextInt(100000),random.nextInt(100000)];
        queue.enqueue(values[0]);
        queue.enqueue(values[1]);
        expect(queue.isEmpty(), equals((false)));
      });
    });
  }

  void stackTesting() {
    group('stack testing cases', (){
      test('stack.push() is a test for function push', () {
        var value= random.nextInt(100000);
        expect(stack.push(value), equals((true)));
      });

      test('stack.pop() is a test for function pop', () {
        var value= random.nextInt(100000);
        stack.push(value);
        expect(stack.pop(), equals((value)));
      });

      test('stack.getLength() is a test for function to get length ', () {
        List<int> values=[random.nextInt(100000),random.nextInt(100000)];
        stack.push(values[0]);
        stack.push(values[1]);
        expect(stack.getLength(), equals((values.length)));
      });

      test('satck.peek() is a test for function to return head of stack ', () {
        List<int> values=[random.nextInt(100000),random.nextInt(100000),random.nextInt(100000)];
        stack.push(values[0]);
        stack.push(values[1]);
        stack.push(values[2]);
        expect(stack.peek(), equals((values[2])));
      });

      test('stack.isEmpty() is a test for function if it is empty or not ', () {
        List<int> values=[random.nextInt(100000),random.nextInt(100000)];
        stack.push(values[0]);
        stack.push(values[1]);
        expect(stack.isEmpty(), equals((false)));
      });
    });
  }
  
  while(count<=100000) {
    queueTesting();
    stackTesting();
    count+=1;
  }
  /*
  group('queue testing cases', (){
    test('queue.enqueue() is a test for function enqueue', () {
      expect(queue.enqueue(5), equals((true)));
    });

    test('queue.dequeue() is a test for function dequeue', () {
      var value=5;
      queue.enqueue(value);
      expect(queue.dequeue(), equals((value)));
    });

    test('queue.getLength() is a test for function to get length ', () {
      queue.enqueue(3);
      queue.enqueue(9);
      queue.enqueue(24);
      expect(queue.getLength(), equals((3)));
    });

    test('queue.peek() is a test for function to return head of queue ', () {
      queue.enqueue(4);
      queue.enqueue(2);
      expect(queue.peek(), equals((4)));
    });

    test('queue.isEmpty() is a test for function if it is empty or not ', () {
      //queue.enqueue(4);
      expect(queue.isEmpty(), equals((true)));
    });
  });

  group('stack testing cases', (){
    test('stack.push() is a test for function push', () {
    expect(stack.push(4), equals((true)));
    });

    test('stack.pop() is a test for function pop', () {
      var value=5;
      stack.push(value);
      expect(stack.pop(), equals((value)));
    });

    test('stack.getLength() is a test for function to get length ', () {
      stack.push(3);
      stack.push(9);
      stack.push(24);
      expect(stack.getLength(), equals((3)));
    });

    test('satck.peek() is a test for function to return head of stack ', () {
      stack.push(4);
      stack.push(2);
      expect(stack.peek(), equals((2)));
    });

    test('stack.isEmpty() is a test for function if it is empty or not ', () {
      stack.push(4);
      expect(stack.isEmpty(), equals((false)));
    });
  });
*/
}
