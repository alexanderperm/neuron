function [ nmas ] = createnetwork()
     colsl=input('������� ���-�� ������: ');
     colinp=input('������� ���-�� ������� ������: ');
     colde=input('������� ���-�� �������� ������: ');
     nmas=cell(1,colsl);
     for i=1:colsl-1
        disp('������� ���-�� �������� � ���� �:  '); disp(i);
        colvis(i)=input('');
     end;
     colvis(colsl)=colde;
     for j=1:colvis(1)
         if j==1
             tw=input('������� ����������� �������� ������� ����: ');
         end;
        nmas{1,1}(j)=neuron(tw,rand(1,colinp));
     end;
     for i=2:colsl
         for j=1:colvis(i)
            if (j==1 && i~=colsl) 
               tw=input('������� ����������� ������� ����:  ');
            elseif i==colsl
               tw=@(x)(x);
            end
            nmas{1,i}(j)=neuron(tw,rand(1,colvis(i-1)));
         end; 
     end;
end

