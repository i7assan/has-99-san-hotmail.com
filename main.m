T = readtable('fisheriris.csv');
x = table2array(T(:,5));
y = T(:,1:4);
cv = cvpartition(x,'KFold',10);







