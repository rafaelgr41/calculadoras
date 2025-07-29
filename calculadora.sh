#!/bin/bash                                                                  
echo "Seja bem-vindo à Calculadora Inteligente!"                             
#Escolha dos Números                                                         
echo "Digite o primeiro número: "                                            
read num1                                                                    
echo "Digite o segundo número: "                                             
read num2                                                                    
                                                                             
#Escolha da Operaçao                                                         
echo "Escolha a operaçao (+,-,*,/): "                                        
read operacao                                                                
                                                                             
case $operacao in                                                            
+) resultado=$(echo "$num1 + $num2" | bc);;                                  
                                                                             
  -) resultado=$(echo "$num1 - $num2" | bc);;                                
                                                                             
  \*) resultado=$(echo "$num1 * $num2" | bc);;                               
                                                                             
  /) resultado=$(echo "scale=2; $num1 / $num2" | bc);;                       
                                                                             
  *) echo "Operação inválida"; exit 1;;                                      
                                                                             
esac


echo "Resultado: $resultado"
