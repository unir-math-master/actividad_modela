function [u] = gen_var_acerec()
    global xn;
    flag = 0;
    
    while flag==0
        [u1, xn] = gen(16,4,75,xn);
        [v1, xn] = gen(16,4,75,xn);

        a = 0;
        b = 4;
        c = 3;

        x = a+(b-a)*u1;
        y = c*v1;

        if x>=0 && x<3
            fx = x/6;
        elseif x>=3 && x<4
            fx = 2 - (x/2);
        end

        if y<=fx
            flag = 1;
        end
    end
    u = fx;
end

