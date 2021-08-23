 import 'data_model.dart';

int totalPrice=0;
 int _sum=0;
 total(){
   for(int i=0;i<cartList.length;i++)
   {
     _sum+=cartList[i].price;
   }
   totalPrice=_sum;
 }