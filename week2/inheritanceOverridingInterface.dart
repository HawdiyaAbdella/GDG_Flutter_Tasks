class Device{
turnon(){
  print('device is turning on...');

}

}

class Laptop extends Device{
  @override
  turnon(){
    print('Laptop is turning on...');

  }
}

class Phone extends Device{
  @override
  turnon(){
    print('Phone is turning on...');
    
  }
}

class person{
  String name;
  int age;

  person(this.name, this.age);

  void introduce(){
    print('Hello, my name is $name and I am $age years old.');
  }
}

class student extends person{
  String major;

  student(String name, int age, this.major): super(name, age);

  @override
  void introduce(){
    super.introduce();
    print('I am studying $major.');
  }
}

void main(){

Device d1= new Laptop();
Device d2= new Phone();
Device d3= new Device();

print(d1.turnon());
print(d2.turnon());
print(d3.turnon());

}