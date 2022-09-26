void main(){
  List nums = [1,2,5,20,15];
  int target = 20;

  for(int i = 0; i<nums.length; i++){
    for(int j = i+1; j<nums.length; j++){
      if(nums[i]+nums[j]==target){
        print('Output: ${nums.indexOf(nums[i])}');
      }
    }
  }
}