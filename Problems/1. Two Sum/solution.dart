void main() {
  List<int> nums = [1, 2, 7, 4];
  int target = 11;

  var indices = indicesViaHashMap(nums: nums, target: target);

  indices.isNotEmpty
      ? print("The indices are ${indices.map((e) => e).join(",")}")
      : print("No two numbers sum matching the target");
}

List<int> indicesViaHashMap({required List<int> nums, required int target}) {
  Map<int, int> hashMap = {};

  for (int i = 0; i < nums.length; i++) {
    var compliment = target - nums[i];
    if (hashMap.containsKey(compliment)) {
      return [hashMap[compliment]!, i];
    }

    hashMap[nums[i]] = i;
  }

  return [];
}

List<int> indicesViaBruteforce({required List<int> nums, required int target}) {
  for (int i = 0; i < nums.length; i++) {
    for (int j = i + 1; j < nums.length; j++) {
      if (target == nums[i] + nums[j]) {
        return [i, j];
      }
    }
  }
  return [];
}
