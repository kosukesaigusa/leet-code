class MyLinkedList {
  MyLinkedList();

  List<int> _list = [];

  int get(int index) {
    if (index < 0 || index >= _list.length) {
      return -1;
    }
    return _list[index];
  }

  void addAtHead(int val) {
    _list = [val, ..._list];
  }

  void addAtTail(int val) {
    _list = [..._list, val];
  }

  void addAtIndex(int index, int val) {
    if (index > _list.length) {
      return;
    }
    _list = [
      for (var i = 0; i < index; i++) _list[i],
      val,
      for (var i = index; i < _list.length; i++) _list[i],
    ];
  }

  void deleteAtIndex(int index) {
    _list = [
      for (var i = 0; i < _list.length; i++)
        if (i != index) _list[i],
    ];
  }
}
