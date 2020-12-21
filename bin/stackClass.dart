class Stack {
  List<dynamic> _stack=List();

  bool push(var value) {
    _stack.add(value);
    if(_stack.contains(value)) {
      return true;
    }
    else {
      return false;
    }
    
  }

  dynamic pop() {
    if(isEmpty()) {
      return null;
    }
    else{
      return _stack.removeLast();
    }
  }

  bool isEmpty() {
    return _stack.isEmpty;
  }

  dynamic peek() {
    if(isEmpty()) {
      return null;
    }
    else {
      return _stack.elementAt(getLength()-1);
    }
  }

  int getLength() {
    return _stack.length;
  }
}