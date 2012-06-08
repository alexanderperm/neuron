classdef tempe
    properties
     colsl;
     colinp;
     colde;
    end
    methods
      function obj = tempe ()
        obj.colsl = 0;
        obj.colinp = 0;
        obj.colde=0;

      end;
      function sl = ssl(obj)
        sl = obj.colsl;
      end;
      function de = dde(obj)
        de = obj.colde;
      end;
      function in = iin(obj)
        in=obj.colinp;
      end;
    end
end
