function [ rez ] = run(nnet,vxv)
   cstol=length(nnet);
   vxvt=vxv;
   for i=1:cstol
       temp=nnet{1,i};
       cstrk=length(temp);
       vxvn=zeros(1,cstrk);
       for k=1:cstrk
           nnet{1,i}(k)=setinputv(vxvt);
       end;
       for j=1:cstrk
           vxvn(j)=count(temp(j),vxvt);
       end;
       vxvt=vxvn;
   end;
   rez=vxvt;
end
