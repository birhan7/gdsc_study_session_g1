void main()
{
 var collection=[1,8,3,3,4,45,69,10,39,91,10];
 print("The maximum number is ${findMaximum(collection)}");
 print("The minimum number is ${findMinimum(collection)}");
 print("The sum of the list is ${calculateSum(collection)}");
 print("The average of the list is ${calculateAverage(collection)}");

}

List insertion_sort(List<int> list)
 {
  int length=list.length-1;
  for(int i=0;i<length;i++)
  {
    int minIndex=i;
    for(int j=length;j>=i+1;j--)
    {
      if(list[minIndex]>list[j])
      {
         minIndex=j;
      }
     
    }
    int temp=list[i];
    list[i]=list[minIndex];
    list[minIndex]=temp;
  }
return list;
 }

 int findMaximum(List<int> arr)
 {
  insertion_sort(arr);
  return arr.last;
 }

 int findMinimum(List<int> arr)
 {
  insertion_sort(arr);
  return arr.first;
 }

 int calculateSum(List<int> arr)
 {
  int sum=0;
 for(int i=0;i<=arr.length-1;i++)
 {
  sum+=arr[i];
 }
 return sum;
 }

 double calculateAverage(List<int> arr)
 {
 int total=calculateSum(arr);
 int length=arr.length;
  double average=total/length;
 return average;
 }
