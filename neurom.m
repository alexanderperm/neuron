classdef neuron
    properties
      tf;
      weights;
      delta;
      weightsum;
      inputv;
      
    end
    methods
      function obj = neuron(tf,weights)
        obj.tf = tf;
        obj.weights = weights;
      end;
      function cnt = count(obj,input)
        cnt = obj.tf(dot(obj.weights,input));
      end;
      function fun = getFunction(obj)
        fun = @obj.tf;
      end;
      function otv = getweight(obj)
          otv=obj.weights;
      end;
      function obj = setdel(del)
          obj.delta=del;
      end;
      function res = getdel(obj)
          res=obj.delta;
      end;
      function obj = setinputv(v)
          obj.inputv=v;
      end;
      function res = getinputv(obj)
          res=obj.inputv;
      end;
    end
end
