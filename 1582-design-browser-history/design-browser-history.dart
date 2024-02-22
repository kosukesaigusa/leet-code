class BrowserHistory {
  BrowserHistory(String homepage) {
    _histories = [homepage];
    _currentIndex = 0;
  }

  late List<String> _histories;
  
  late int _currentIndex;

  void visit(String url) {
    if (_currentIndex + 1 < _histories.length) {
      _histories = [
        for (var i = 0; i <= _currentIndex; i++) _histories[i],
        url,
      ];
    } else {
      _histories = [..._histories, url];
    }
    _currentIndex = _histories.length - 1;
  }

  String back(int steps) {
    _currentIndex = _currentIndex - steps;
    if (_currentIndex < 0) {
      _currentIndex = 0;
      return _histories.first;
    }
    return _histories[_currentIndex];
  }

  String forward(int steps) {
    _currentIndex = _currentIndex + steps;
    if (_currentIndex >= _histories.length) {
      _currentIndex = _histories.length - 1;
      return _histories.last;
    }
    return _histories[_currentIndex];
  }
}

/**
 * Your MyLinkedList object will be instantiated and called as such:
 * MyLinkedList obj = MyLinkedList();
 * int param1 = obj.get(index);
 * obj.addAtHead(val);
 * obj.addAtTail(val);
 * obj.addAtIndex(index,val);
 * obj.deleteAtIndex(index);
 */
