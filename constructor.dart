class student{
  String name;
  int age;
  student(this.name,this.age)
  { print( 'Student Created: $name, $age'); }

  student.guest(): name='Guest', age=0{
    print('Gueat student created: $name, $age');
  }

}

class product{

  final String id;
  String name;
  double price;
  product(String id, String name, double price): this.id=id,this.name=name,this.price=price{
    print('Product Created: $id, $name, $price');
  }
}

void main(){
  student s1= student('Alice', 21);
  student s2= student.guest();

  product p1= product('P001', 'Laptop', 999.99);
}