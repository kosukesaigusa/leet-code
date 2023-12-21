class Solution {
  int removeDuplicates(List<int> nums) {
    if (nums.isEmpty) return 0;

    int i = 0;
    for (int j = 1; j < nums.length; j++) {
      if (nums[j] != nums[i]) {
        i++;
        nums[i] = nums[j];
      }
    }
    return i + 1;
  }
}

// class Solution {
//   int removeDuplicates(List<int> nums) {
//     var i = 1;
//     while (nums.length > i) {
//       if (nums[i - 1] == nums[i]) {
//         nums.remove(nums[i]);
//         continue;
//       }
//       i++;
//     }
//     return nums.length;
//   }
// }

// class Solution {
//   int removeDuplicates(List<int> nums) {
//     var i = 0;
//     while (i < nums.length) {
//       final value = nums[i];
//       while (i + 1 < nums.length && nums[i + 1] == value) {
//         nums.remove(value);
//       }
//       i++;
//     }

//     return nums.length;
//   }
// }