class Queue {
  List<dynamic> _queue=List();

  bool enqueue(var value) {
    _queue.add(value);
    if(_queue.contains(value)) {
      return true;
    }
    else {
      return false;
    }
  }

  dynamic dequeue() {
    if(isEmpty()) {
      return null;
    }
    else{
      return _queue.removeAt(0);
    }
  }

  bool isEmpty() {
    return _queue.isEmpty;
  }

  dynamic peek() {
    if(isEmpty()) {
      return null;
    }
    else {
      return _queue.elementAt(0);
    }
  }

  int getLength() {
    return _queue.length;
  }
} 