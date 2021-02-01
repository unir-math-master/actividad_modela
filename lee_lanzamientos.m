function lista = lee_lanzamientos(nombrefichero)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here


if(isfile(nombrefichero)==0)
    print("Nombre incorrecto")
end

fileID=fopen(nombrefichero,'r');
a=fscanf(fileID, '%c');
fclose(fileID);
n=length(a);
lista=zeros(1,n);
for i=1:n
    if(a(i)=='X')
        lista(i)=1;       
    else
        lista(i)=0;
    end
end

end