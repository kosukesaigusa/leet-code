class Solution {
  int removeDuplicates(List<int> nums) {
    var i = 1;
    while (nums.length > i) {
      if (nums[i - 1] == nums[i]) {
        nums.remove(nums[i]);
        continue;
      }
      i++;
    }
    return nums.length;
  }
}