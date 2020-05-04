%recordemos que 1, 2, 3, 4 son los ?ndices para la olla que contiene el
%agua, para el agua, pata la olla que contiene la leche condensada y para
%la leche condensada de manera respectiva

% las siguientes cantidades est?n en J (kg)^-1 K^-1
c_1 = 4120;  
c_2 = 4181.3;  
c_3 = c_1;
c_4 = 3265.7; % promedio del de la mantequilla y el de la leche entera

% las siguientes cantidades est?n en kg
m_1 = 1; 
m_2 = 14;
m_3 = 0.5;
m_4 = 0.5;

% lo que viene est? en W m^-3 K^-1
h_12 = 1500;
h_23 = h_12;
h_34 = 500;
h_15 = 300;

%Lo que viene est? en m^2
A_12 = 0.3;
A_23 = 0.09;
A_34 = 0.01;
A_15 = 0.37;

% la matriz A queda dada por

A = [[-(h_12 * A_12 + h_15 * A_15),          h_12 * A_12          ,               0              ,      0      , h_15 * A_15] ./ (c_1 * m_1),
     [      h_12 * A_12           ,   -(h_12 * A_12 + h_23 * A_23),         h_23 * A_23          ,      0      ,      0     ] ./ (c_2 * m_2),
     [           0                ,        h_23 * A_23            , -(h_23 * A_23 + h_34 * A_34 ), h_34 * A_34 ,      0     ] ./ (c_3 * m_3),
     [           0                ,              0                ,         h_34 * A_34          , -h_34 * A_34,      0     ] ./ (c_4 * m_4),
     [           0                ,              0                ,               0              ,      0      ,      0     ]];

B = transp([1, 0, 0, 0, 0]);

C = [[1, 0, 0, 0, 0],
     [0, 1, 0, 0, 0],
     [0, 0, 1, 0, 0],
     [0, 0, 0, 1, 0]];






x_0 = transp([294.15, 291.15, 294.15, 285.15, 294.15]);

alpha = 5;
Phi = 1;
U = alpha * Phi;


eig(A)
