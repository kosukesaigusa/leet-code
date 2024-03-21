class MyHashMap {
  final Map<int, int> map = {};

  void put(int key, int value) {
    map[key] = value;
  }

  int get(int key) {
    return map[key] ?? -1;
  }

  void remove(int key) {
    map.remove(key);
  }
}

/**
 * Your MyHashMap object will be instantiated and called as such:
 * MyHashMap obj = MyHashMap();
 * obj.put(key,value);
 * int param2 = obj.get(key);
 * obj.remove(key);
 */