function [InvMod, I] = gauss_jacques(K,m)
% function [InvMod, I] = gauss_jacques(K,m)
% The Gauss-Jacques method calculates the modular inverse of matrices  
% variable sized, this method is commonly used in applications for cryptography security. This work is an 
% important contribution to knowledge and direct appliance in data security
% problems in computer science context.
%
% Input:
%   K       It must be a square matrix
%   m       It must be a prime number
% 
% Output:
%   InvMod  The modular inverse matrix
%   I       Identity matrix 
%
% Example: generate a modular inverse matrix
%   n = 10; % size of the matrix
%   K = randi(100,n,n); % generate a randon matrix with size 'n'
%   m = 89; % modulus -> prime number   
%   [InvMod, I] = gauss_jacques(K, m); 
%
% References:
%  https://www.uaq.mx/investigacion/revista_ciencia@uaq/ArchivosPDF/v11-n1/art14_numerada-VF.pdf
%  https://savannah.gnu.org/patch/?9691
%  https://www.npmjs.com/package/gauss-jacques
%
% Authors:
%   Intellectual author: Fausto Abraham Jacques-Garc�a
%   Code: Adolfo Solis-Rosas
%   Contributors: Aldo Valencia-Palma
%                 Sergio Carrillo-Paredes
%                 Vania Hinojosa-Navarro      
%   Modified: Daniel Cant�n-Enriquez
%
% Version 1.1 - 27/03/2019

if ~isprime(m)
    error('Error. The second argument is not a prime number.')
end

if size(K,1) ~= size(K,2)
    error('Error. The matrix must be square.')
end

[rows, cols] = size(K);
K = [K,eye(rows,cols)];

for i = 1:rows
    pivot = K(i,i);
    
     if(pivot == 0)
        for k = i:rows
            if(K(k,i) ~= 0)
                temp=K(i,:);
                K(i,:)=K(k,:);
                K(k,:)=temp;
                break;
            end
        end
     end
     
      pivot = K(i,i);
    
    x = extended_euclidean(pivot, m);
    
    K(i,:) = mod( K(i,:) * x,m);
    for j = 1:rows
       if(i ~= j)
           K(j,:) = mod((K(i,:) * (K(j,i)*-1) + K(j,:)),m);
       end
    end
end
InvMod = K(:,cols+1:end);
I = K(:,1:cols);
end
