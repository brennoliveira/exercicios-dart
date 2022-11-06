// 1)
void main() {
  const boloPrecos = {'ovos' : 5.5, 'chocolate' : 7.5, 'cenoura' : 6.5, };
  
  const ordem =['ovos', 'chocolate', 'morango'];
  
double total = 0;

ordem.forEach((item) => boloPrecos.keys.contains(item) ? total += boloPrecos[item] as num : print('$item não está no cardápio') );

print(total);
}
