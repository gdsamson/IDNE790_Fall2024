%% 1
A = ones(4, 5);
A(3,4) = -1;
A(:,1) = -1:-1:-4;

%% 2
B = zeros(size(A));
 B(3:4, 1:3) = A(2:3,2:4);

%% 3
C = A+B;
CLessZero = sum(C<0);
C(C<0) = 0;

%% 4
D = mean(C);
D_2 = sum(C)/size(C,2);

%% 5
E = sum(C,2)';

%% 6
F = zeros(size(E));

for i = 1:length(E)
    F(i+1) = E(i)-D(i)';
end

%% 7
G = rand(1,100);


%% 8 
H = reverse_rows(C,1);
I = reverse_rows(C,2);

%% 9
x1 = 1:5;
x2 = (1:3)';
x3 = ones(3,3);
J = [x1;x2,x3,x2;x1];