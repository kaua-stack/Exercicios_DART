void main(){
  var adicao = (int a, int b) => a + b;
  var sub= (int a, int b) => a - b;
  var mult = (int a, int b) => a * b;
  var div = (int a, int b) => a / b;
  var composta = (int a, int b) => {a * b / 2};


  print(adicao(10,20)); 
  print(sub(10,20));
  print(mult(10,20));
  print(div(10,20));
  print(composta(10,20));
}