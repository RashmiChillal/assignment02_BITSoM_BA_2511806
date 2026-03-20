## Anomaly Analysis
### insert Anomaly
**we cannot add new product unless it is a part of an order**
-*Example:*
- Row 2 P004,Notebook,Stationery,
- Row 5 P005,Headphones,Electronics 
*But they only exist inside order rows, for example:*

 - RD1027,C002,Priya Sharma,priya@gmail.com,Delhi,P004,Notebook,
 

 ### update Anomaly
 ** Changing customer details requires to update in multiple rows**
 -*Example:*
 - Rows 2 , 5 , 21 C002,Priya Sharma,priya@gmail.com appears in three diffrent rows
 - If we want to change her E-mail id to new.priya@gmail.com then we have to update all three rows
 -*Risk: If any update is missed data becomes inconsistant*

 ### Delete Anomaly
 **product information exists only inside order records**

 - ORD1027,C002,Priya Sharma,priya@gmail.com,Delhi,P004,Notebook,Stationery
-*Risk: If we delete order for that product we will also loose other details of the product such as product_id, Product _name,    Category product information is completely gone.*
-*Deleting a single row can unintentionally remove important data like product details.*
