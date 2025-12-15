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

void main(){

Device d1= new Laptop();
Device d2= new Phone();
Device d3= new Device();

print(d1.turnon());
print(d2.turnon());
print(d3.turnon());

}