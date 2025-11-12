% Q1
a = 5;
b = exp(a);
c = log(b);

%Q2
save task2.mat a b c
clear;
load task2.mat

% Q3
x = [0 pi/2 3*pi/2 2*pi];
a = sin(x);

% Q4
a = 1+7i;
b = 2-3i;
abs(a+b);

%Q5
a = [3 -9 8 4];
a = a';

% Q6
A = zeros(3,4);
B = ones(3,4);
C = randn(3,4);

% Q7
a = [2:2:50];

% Q8
SUM = sum([10:50]);

% Q9
a = [1 3 -2 4 12 -9 0 1 8];
MAX = max(a);
MIN = min(a);
b = find(a<0);
c = a(a>0);

%Q10
ans10 = [3 4; -9 6; 1 -3]*[0 6 -4; 1 -5 0];

%Q11
A = [[1:2:10]; [2:2:10]];

%Q12
A = [1 2 9 4 3; 3 3 4 11 3; 9 12 8 7 1];
B = A';
sizeB12 = size(B);
a = B(2,3);
b = B(:,2);
c = B(2:5,1);

%Q13
A = [1 1 9; 2 8 12; 7 4 7; 4 1 3];
[~, n] = size(A);
a = A(4,2);
b = A(3,:);
c = A(:,2:3);

% Q14
vector_a = [4 5 9 20 -4 3 6 9 32 0 3];
ans14 = find(5<vector_a & vector_a<=10);
vector_b = vector_a(ans14);
max_vecb = max(vector_b);
min_vecb = min(vector_b);

% Q15
A = randn(2,2);
B = randn(2,2);
ans15_1 = A*B;
ans15_2 = A^3;
ans15_3 = det(B);

% Q16
A = [1 1+1i; 3+2i 2+3i];
A_prime = A';
A_dotprime = A.';
a = real(A);
b = imag(A);

% Q17
ans17 = func(-100);

% Q18
x = [0:2*pi/10:2*pi];
y = sin(x);
% plot(x, y,'-o');

% Q19
xlim([0,2*pi]);
ylim([-1, 1]); 
xticks([0:2*pi/10:2*pi]);
xlabel("x");
ylabel("Value of sin(x)")
legend('sin(x)')

% Q20

% Q21
load("patients2023.mat");
mean_A = mean(A);
std_A = std(A);
median_A = median(A);
max_A = max(A);
min_A = min(A);

% Q22
BMI = A(:,3)./((A(:,2)/100).^2);
mean_BMI = mean(BMI);
std_BMI = std(BMI);
median_BMI = median(BMI);
max_BMI = max(BMI);
min_BMI = min(BMI);

% Q23
plot(A(:,3), A(:,2), 'o')