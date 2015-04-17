public class Main {
  public static void main(String[] args) {
    int a[] = {5,6,3,8,9};
    for(int i=0;i<5;i++){
        for(int j=0;j<4;j++){
            if(a[j]>a[j+1]){
                int temp=a[j];
                a[j]=a[j+1];
                a[j+1]=temp;
            }
        }
    }
    System.out.println("The sorted array is");
    for(int i=0;i<5;i++){
        System.out.println(a[i]);
    }
  }
}
