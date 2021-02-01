for i=1:10000
    r(i)=rand;
    if r(i)<0.5
        r(i)=0;
    else if r(i)>=0.5
            r(i)=1;
        end
    end
end
