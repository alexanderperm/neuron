function [ nmas ] = createnetwork()
     colsl=input('¬ведите кол-во склоев: ');
     colinp=input('¬ведите кол-во входных данных: ');
     colde=input('¬ведите кол-во выходных данных: ');
     nmas=cell(1,colsl);
     for i=1:colsl-1
        disp('¬ведите кол-во нейронов в слое є:  '); disp(i);
        colvis(i)=input('');
     end;
     colvis(colsl)=colde;
     for j=1:colvis(1)
         if j==1
             tw=input('¬ведите трансферную функциюж первого сло€: ');
         end;
        nmas{1,1}(j)=neuron(tw,rand(1,colinp));
     end;
     for i=2:colsl
         for j=1:colvis(i)
            if (j==1 && i~=colsl) 
               tw=input('¬ведите трансферную функцию сло€:  ');
            elseif i==colsl
               tw=@(x)(x);
            end
            nmas{1,i}(j)=neuron(tw,rand(1,colvis(i-1)));
         end; 
     end;
end

