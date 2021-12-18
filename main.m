clear

M0 = readmatrix('F:/Documents/drawdata/path_0.csv');
M0 = [M0(:,1) M0(:,2)];


M1 = readmatrix('F:/Documents/drawdata/path_1.csv');
M1 = [M1(:,1) M1(:,2)];


M2 = readmatrix('F:/Documents/drawdata/path_2.csv');
M2 = [M2(:,1) M2(:,2)];


M3 = readmatrix('F:/Documents/drawdata/path_3.csv');
M3 = [M3(:,1) M3(:,2)];


M4 = readmatrix('F:/Documents/drawdata/path_4.csv');
M4 = [M4(:,1) M4(:,2)];


M5 = readmatrix('F:/Documents/drawdata/path_5.csv');
M5 = [M5(:,1) M5(:,2)];


M6 = readmatrix('F:/Documents/drawdata/path_6.csv');
M6 = [M6(:,1) M6(:,2)];


M7 = readmatrix('F:/Documents/drawdata/path_7.csv');
M7 = [M7(:,1) M7(:,2)];


M8 = readmatrix('F:/Documents/drawdata/path_8.csv');
M8 = [M8(:,1) M8(:,2)];


M9 = readmatrix('F:/Documents/drawdata/path_9.csv');
M9 = [M9(:,1) M9(:,2)];


M10 = readmatrix('F:/Documents/drawdata/path_10.csv');
M10 = [M10(:,1) M10(:,2)];


M11 = readmatrix('F:/Documents/drawdata/path_11.csv');
M11 = [M11(:,1) M11(:,2)];


M12 = readmatrix('F:/Documents/drawdata/path_12.csv');
M12 = [M12(:,1) M12(:,2)];


M13 = readmatrix('F:/Documents/drawdata/path_13.csv');
M13 = [M13(:,1) M13(:,2)];


M14 = readmatrix('F:/Documents/drawdata/path_14.csv');
M14 = [M14(:,1) M14(:,2)];


M15 = readmatrix('F:/Documents/drawdata/path_15.csv');
M15 = [M15(:,1) M15(:,2)];


M16 = readmatrix('F:/Documents/drawdata/path_16.csv');
M16 = [M16(:,1) M16(:,2)];

filename = 'F:/Documents/drawdata/saveml_';
f = '.png';
 
 parfor n = 1:200
    n
    [xn0, yn0] = getFforn(n, M0);


    [xn1, yn1] = getFforn(n, M1);


    [xn2, yn2] = getFforn(n, M2);


    [xn3, yn3] = getFforn(n, M3);


    [xn4, yn4] = getFforn(n, M4);


    [xn5, yn5] = getFforn(n, M5);


    [xn6, yn6] = getFforn(n, M6);


    [xn7, yn7] = getFforn(n, M7);


    [xn8, yn8] = getFforn(n, M8);


    [xn9, yn9] = getFforn(n, M9);


    [xn10, yn10] = getFforn(n, M10);


    [xn11, yn11] = getFforn(n, M11);


    [xn12, yn12] = getFforn(n, M12);


    [xn13, yn13] = getFforn(n, M13);


    [xn14, yn14] = getFforn(n, M14);


    [xn15, yn15] = getFforn(n, M15);


    [xn16, yn16] = getFforn(n, M16);

    fill(xn0,yn0,'black',xn1, yn1, [0.5,0.5,0.5],xn2,yn2,'black',xn3,yn3,'black',xn4,yn4,'black',xn5,yn5,'black',xn6,yn6,'black',xn7,yn7,[0.5, 0.5, 0.5],xn8,yn8,'black',xn9,yn9,[0.5, 0.5, 0.5],xn10,yn10,[0.5, 0.5, 0.5],xn11,yn11,'black',xn12,yn12,'black',xn13,yn13,[0.5, 0.5, 0.5],xn14,yn14,[0.5, 0.5, 0.5],xn15,yn15,[0.5, 0.5, 0.5],xn16,yn16,'black');

    file_ = filename + string(n);
    file = file_ + f;
    
    axis([400 1600 -1000 0]);
    axis equal;axis off;
    print(gcf, '-dpng', '-r300', file);
    cla;
 end