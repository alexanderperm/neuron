function [ nmas ] = creat(colsl,colinp,colde,tw)
     nmas=cell(1,colsl);
     for i=1:colsl-1
        colvis(i)=5
     end;
     colvis(colsl)=colde;
     for j=1:colvis(1)
         if j==1
        nmas{1,1}(j)=neuron(tw,rand(1,colinp));
         end;
     end;
     for i=2:colsl
         for j=1:colvis(i)
            nmas{1,i}(j)=neuron(tw,rand(1,colvis(i-1)));
         end; 
     end;
end
