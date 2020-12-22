import 'package:test/test.dart';
import 'dart:math';
import 'dart:async';
import 'queueClass.dart';
import 'stackClass.dart';

void main() {
  List<dynamic> testData=[
    'hii',
    'a',
    6,
    0,
    4.2,
    'that ',
    -7,
    -5.1,
    130
  ];
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
        var value= testData[random.nextInt(9)];
        expect(queue.enqueue(value), equals((true)));
      });

      test('queue.dequeue() is a test for function dequeue', () {
        var value= testData[random.nextInt(9)];
        queue.enqueue(value);
        expect(queue.dequeue(), equals((value)));
      });

      test('queue.getLength() is a test for function to get length ', () {
        List<dynamic> values=[testData[random.nextInt(9)],testData[random.nextInt(9)],testData[random.nextInt(9)]];
        queue.enqueue(values[0]);
        queue.enqueue(values[1]);
        queue.enqueue(values[2]);
        expect(queue.getLength(), equals((values.length)));
      });

      test('queue.peek() is a test for function to return head of queue ', () {
        List<dynamic> values=[testData[random.nextInt(9)],testData[random.nextInt(9)],testData[random.nextInt(9)]];
        queue.enqueue(values[0]);
        queue.enqueue(values[1]);
        queue.enqueue(values[2]);
        expect(queue.peek(), equals((values[0])));
      });

      test('queue.isEmpty() is a test for function if it is empty or not ', () {
        List<dynamic> values=[testData[random.nextInt(9)],testData[random.nextInt(9)]];
        queue.enqueue(values[0]);
        queue.enqueue(values[1]);
        expect(queue.isEmpty(), equals((false)));
      });
    });
  }

  void stackTesting() {
    group('stack testing cases', (){
      test('stack.push() is a test for function push', () {
        var value= testData[random.nextInt(9)];
        expect(stack.push(value), equals((true)));
      });

      test('stack.pop() is a test for function pop', () {
        var value= testData[random.nextInt(9)];
        stack.push(value);
        expect(stack.pop(), equals((value)));
      });

      test('stack.getLength() is a test for function to get length ', () {
        List<dynamic> values=[testData[random.nextInt(9)],testData[random.nextInt(9)]];
        stack.push(values[0]);
        stack.push(values[1]);
        expect(stack.getLength(), equals((values.length)));
      });

      test('satck.peek() is a test for function to return head of stack ', () {
        List<dynamic> values=[testData[random.nextInt(9)],testData[random.nextInt(9)],testData[random.nextInt(9)]];
        stack.push(values[0]);
        stack.push(values[1]);
        stack.push(values[2]);
        expect(stack.peek(), equals((values[2])));
      });

      test('stack.isEmpty() is a test for function if it is empty or not ', () {
        List<dynamic> values=[testData[random.nextInt(9)],testData[random.nextInt(9)]];
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
}
