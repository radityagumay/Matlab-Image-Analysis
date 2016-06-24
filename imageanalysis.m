c = {'mdb264.pgm';'mdb265.pgm';'mdb267.pgm';'mdb270.pgm';
     'mdb271.pgm';'mdb274.pgm';'mdb290.pgm';'mdb312.pgm';
     'mdb314.pgm';'mdb315.pgm'};
x = {596; 593; 793; 356; 784; 127; 337; 240; 518; 516}
y = {431; 498; 481; 945; 270; 505; 353; 263; 191; 447}

%please enable this when you dont have resultimage folder
%mkdir('resultimage') 

for n = 1:10
    fileName = c{n};
    a = imread(fileName);
    numX = x{n};
    numY = y{n};
    newX = numX - 128;
    newY = ((1024-numY)-128);
    disp(newX);
    disp(newY);
    b = imcrop(a,[newX newY 255 255]);
    subplot(1,2,1), imshow(a);
    subplot(1,2,2), imshow(b);
    s1 = 'resultimage/';
    s2 = fileName;
    s = strcat(s1,s2)
    imwrite(b, s);
end