// 17)

void main() {
  
List l1 = [1,2,3];
List l2 = [4,5];
List l3 = [];

l1.forEach((item) => l3.add(item) );
l2.forEach((item) => l3.add(item));

print(l3);
  
var sum = 0;
  
l3.forEach((item) => sum += item as int);
  
print(sum);
}
