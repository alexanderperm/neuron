function [ tnet ] = train( nnet,input,output )
   dopuspogr=0.001;
   speed=0.025;
   z=run(nnet,input);
   colsl=length(nnet);
   colvls=mength(nnet{1,colsl});
   sume=0;
   for i=1:colvls
       setdel(nnet{1,colsl}(i),output-z(i));
       temp=getdel(nnet{1,colsl}(i));
       sume=sume+temp*temp;    
   end;
   sume=sume/2;
   while sume>dopuspogr
       for i=colsl-1:colsl-1:1
           for j=1:lenght(nnet{1,i})
               colvp=length(nnet{1,i+1});
               tmdel=0;
                 for k=1:colvp
                     temp=getweight(nnet{1,i}(k));
                     tmdel=tmdel+temp(j)*getdel(nnet{1,i}(j)); 
                 end;
               setdel(nnet{1,i}(j),tmdel);  
           end;   
       end;
       for i=1:colsl-1
           for j=1:lenght(nnet{1,i})
               temp=getweight(nnet{1,i}(j));
               col=length(temp);
               for k=1:col
                   temp(k)=temp(k)-speed*cout(getinputv(nnet{1,i}(j)))*(1-count(getinputv(nnet{1,i}(j))))*getdel(nnet{1,i}(j))*cout(getinputv(nnet{1,i}(j)));
               end;
           end;
       end;
       sume=0;
       z=run(nnet,input);
       for i=1:colvls
           setdel(nnet{1,colsl}(i),output-z(i));
           temp=getdel(nnet{1,colsl}(i));
           sume=sume+temp*temp;   
       end;
       sume=sume/2;
   end;
   tnet=nnet;
end

