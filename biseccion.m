 A=0;
 C=0;
 I=0;
 G=0;
 Num=0;
 Cp=0;
 B=0;
 fprintf('\t\tM�todo de Bisecci�n\n\n');
 Fx=input('\nDigite la Funci�n: ','s');
 A=input('\nDigite el Valor de A: ');
 C=input('\nDigite el Valor de C: ');
 Num=input('\nDigite el N�mero de Iteraciones: ');
 Cp=input('\nDigite el Criterio de Parada: ');
 Er=Cp+1;
 x=A;
 fA=eval(Fx); 
 x=C;
 fC=eval(Fx); 
 fprintf('\n\n');
 if (fA*fC > 0) 
  fprintf('\n\nNo existen Ra�ces en esta Ecuaci�n');  
 else
  while (Er>Cp & I<Num)
   I=I+1;
   Ant=B;
   G=A+C;
   B=G/2;
   x=B;
   fB=eval(Fx);
   if (fA*fB<=0) C=B; fC=fB;
   else          A=B; fA=fB;
   end   
   Er=abs(((B-Ant) /B)*100);   
   fprintf('A=%.3f    B=%.3f    C= %.3f    fA=%.3f    fB=%.3f    fC=%.3f    Er= %.3f',A,B,C,fA,fB,fC,Er);
   fprintf('\n');
end  
  fprintf('\n\nLa Ra�z es: %.3f',B);
  x=-10:.1:10;
  ezplot(Fx);
 end


