pragma solidity ^0.4.2;

contract MyRegistry {
  
   
    string dist_name;
    string dist_quantity;
    string dist_value;
    string dist_date;
    string thresh_temp;
    string product_name;
    

 

  event OrderGenerated(string orderno);
 

  function createOrder(string orderno, string product, string temp, string value, string quantity, string delivery) {
    product_name = product;
    thresh_temp = temp;
    dist_value = value;
    dist_quantity = quantity;
    dist_date = delivery;
    OrderGenerated(orderno);
  }

  
  function fetchInitialDetails(string orderno) constant returns(string, string, string, string, string) {
    return (product_name,
            thresh_temp,
            dist_value,
            dist_quantity,
            dist_date);
  }

  

}
