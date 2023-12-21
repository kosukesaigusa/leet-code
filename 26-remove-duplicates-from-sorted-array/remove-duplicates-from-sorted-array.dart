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

/// 上記よりかなり実行速度が速い！
class Solution {
  int removeDuplicates(List<int> nums) {
    var i = 0;
    while (i < nums.length) {
      final value = nums[i];
      while (i + 1 < nums.length && nums[i + 1] == value) {
        nums.remove(value);
      }
      i++;
    }

    return nums.length;
  }
}