%Cálculo genérico
clc
%Bases del sistema
global Scc XR;
global ST1 ST2 ST3 ST4 ST5 ST6;
global ZT1 ZT2 ZT3 ZT4 ZT5 ZT6;
global tipo barra Icc1f Icc2f Icc2ft Icc3f Icc2ft2;
global Imonof Ibifa Ibifa2 Ibifat Ibifat2 Itrifa;

Sbase = 100;%MVA
Vbase = 115;%V
VbaseF = 13.8;
Ibase = Sbase/(sqrt(3)*VbaseF);
Zbase = Vbase^2/Sbase;

%Valores en Por Unidad
Zsepu = Sbase/Scc;
Rsepu = Zsepu*cos(atan(XR));
Xsepu = 10*Rsepu;
 
%Transformador TX1
RT1 = ZT1*cos(atan(XR)); 
XT1 = 10*RT1;
XT1pu = (XT1/100)*(Sbase/ST1);
RT1pu = 0.1*XT1pu;

RT2 = ZT2*cos(atan(XR)); 
XT2 = 10*RT2;
XT2pu = (XT2/100)*(Sbase/ST2);
RT2pu = 0.1*XT2pu;

RT3 = ZT3*cos(atan(XR)); 
XT3 = 10*RT3;
XT3pu = (XT3/100)*(Sbase/ST3);
RT3pu = 0.1*XT3pu;

RT4 = ZT4*cos(atan(XR)); 
XT4 = 10*RT4;
XT4pu = (XT4/100)*(Sbase/ST4);
RT4pu = 0.1*XT4pu;

RT5 = ZT5*cos(atan(XR)); 
XT5 = 10*RT5;
XT5pu = (XT5/100)*(Sbase/ST5);
RT5pu = 0.1*XT5pu;

RT6 = ZT6*cos(atan(XR)); 
XT6 = 10*RT6;
XT6pu = (XT6/100)*(Sbase/ST6);
RT6pu = 0.1*XT6pu;

Vn=1;%13.8kV

a = complex(1*cosd(120),1*sind(120));

c = 1;
Ef = 1;

%Programación
Z(1,1) = Rsepu + Xsepu*i;
Z(1,2) = Z(1,1);
Z(2,1) = Z(1,2);
Z(2,2) = Z(1,1)+ (RT1pu + XT1pu*i);

Z(3,1) = Z(2,1);
Z(3,2) = Z(2,2);
Z(1,3) = Z(3,1);
Z(2,3) = Z(3,2);
Z(3,3) = Z(1,3) + (RT2pu + XT2pu*i);

Z(4,1) = Z(3,1);
Z(4,2) = Z(3,2);
Z(4,3) = Z(3,3);
Z(1,4) = Z(4,1);
Z(2,4) = Z(4,2);
Z(3,4) = Z(4,3);
Z(4,4) = Z(1,4)+ (RT3pu + XT3pu*i);

Z(5,1) = Z(4,1);
Z(5,2) = Z(4,2);
Z(5,3) = Z(4,3);
Z(5,4) = Z(4,4);
Z(1,5) = Z(5,1);
Z(2,5) = Z(5,2);
Z(3,5) = Z(5,3);
Z(4,5) = Z(5,4);
Z(5,5) = Z(1,5)+ (RT4pu + XT4pu*i);

Z(6,1) = Z(5,1);
Z(6,2) = Z(5,2);
Z(6,3) = Z(5,3);
Z(6,4) = Z(5,4);
Z(6,5) = Z(5,5);
Z(1,6) = Z(6,1);
Z(2,6) = Z(6,2);
Z(3,6) = Z(6,3);
Z(4,6) = Z(6,4);
Z(5,6) = Z(6,5);
Z(6,6) = Z(1,6)+ (RT5pu + XT5pu*i);

Z(7,1) = Z(6,1);
Z(7,2) = Z(6,2);
Z(7,3) = Z(6,3);
Z(7,4) = Z(6,4);
Z(7,5) = Z(6,5);
Z(7,6) = Z(6,6);
Z(1,7) = Z(7,1);
Z(2,7) = Z(7,2);
Z(3,7) = Z(7,3);
Z(4,7) = Z(7,4);
Z(5,7) = Z(7,5);
Z(6,7) = Z(7,6);
Z(7,7) = Z(1,7)+ (RT6pu + XT6pu*i);

factor = 0.8;
Z0(1,1) = Rsepu + Xsepu*i;
Z0(1,2) = Z0(1,1);
Z0(2,1) = Z0(1,2);
Z0(2,2) = Z0(1,1)+ factor*(RT1pu + XT1pu*i);

Z0(3,1) = Z0(2,1);
Z0(3,2) = Z0(2,2);
Z0(1,3) = Z0(3,1);
Z0(2,3) = Z0(3,2);
Z0(3,3) = Z0(1,3)+ factor*(RT2pu + XT2pu*i);

Z0(4,1) = Z0(3,1);
Z0(4,2) = Z0(3,2);
Z0(4,3) = Z0(3,3);
Z0(1,4) = Z0(4,1);
Z0(2,4) = Z0(4,2);
Z0(3,4) = Z0(4,3);
Z0(4,4) = Z0(1,4)+ factor*(RT3pu + XT3pu*i);

Z0(5,1) = Z0(4,1);
Z0(5,2) = Z0(4,2);
Z0(5,3) = Z0(4,3);
Z0(5,4) = Z0(4,4);
Z0(1,5) = Z0(5,1);
Z0(2,5) = Z0(5,2);
Z0(3,5) = Z0(5,3);
Z0(4,5) = Z0(5,4);
Z0(5,5) = Z0(1,5)+ factor*(RT4pu + XT4pu*i);

Z0(6,1) = Z0(5,1);
Z0(6,2) = Z0(5,2);
Z0(6,3) = Z0(5,3);
Z0(6,4) = Z0(5,4);
Z0(6,5) = Z0(5,5);
Z0(1,6) = Z0(6,1);
Z0(2,6) = Z0(6,2);
Z0(3,6) = Z0(6,3);
Z0(4,6) = Z0(6,4);
Z0(5,6) = Z0(6,5);
Z0(6,6) = Z0(1,6)+ factor*(RT5pu + XT5pu*i);

Z0(7,1) = Z0(6,1);
Z0(7,2) = Z0(6,2);
Z0(7,3) = Z0(6,3);
Z0(7,4) = Z0(6,4);
Z0(7,5) = Z0(6,5);
Z0(7,6) = Z0(6,6);
Z0(1,7) = Z0(7,1);
Z0(2,7) = Z0(7,2);
Z0(3,7) = Z0(7,3);
Z0(4,7) = Z0(7,4);
Z0(5,7) = Z0(7,5);
Z0(6,7) = Z0(7,6);
Z0(7,7) = Z0(1,7)+ factor*(RT6pu + XT6pu*i);

for k=1:7
    Vkk(k) = Z(k,k);
    Icc3pu(k) = (c*Vn)/Z(k,k);
    
    if(k==1)
      Ibase = Sbase/(sqrt(3)*115);  
    elseif(k>=4 && k<6)
      Ibase = Sbase/(sqrt(3)*34.5);      
    else
      Ibase = Sbase/(sqrt(3)*13.8);            
    end
    
    Icc3f(k) = Ibase*Icc3pu(k); %Trifasicas
    
    I1 = (c*Ef)/(Z(k,k)+Z(k,k));
    I2 = -I1;
    I0 = 0;

    Ia = I0 + I1 + I2;
    Ib = I0 + a^2*I1 + a*I2;
    Ic = I0 + a*I1 + a^2*I2;

    Icc2f(k) = Ib*Ibase;%Bifásicas
    
    %%%%%%%%%%%%%%%%%
    I1 = (c*Ef)/(Z(k,k)+((Z(k,k)*Z0(k,k))/(Z(k,k)+Z0(k,k))));
    I2 = (I1*Z(k,k)-Ef)/(Z(k,k));
    I0 = (Z(k,k)*I2)/Z0(k,k);

    Ia = I0 + I1 + I2;
    Ib = I0 + a^2*I1 + a*I2;
    Ic = I0 + a*I1 + a^2*I2;

    Icc2ft(k) = (Ib)*Ibase;    
    Icc2ft2(k)= (Ic)*Ibase;    
    %%%%%%%%%%%%%%%%%  
    
    %%%%%%%%%%%%%%%%%%
    %MONOFASICA
    I1 = (c*Ef)/(Z(k,k)+Z(k,k)+Z0(k,k));
    I0 = I1;
    I2 = I1;
    %Icc1f = I1*Ibase; 

    Ia = I0 + I1 + I2;
    Ib = I0 + a^2*I1 + a*I2;
    Ic = I0 + a*I1 + a^2*I2;
    Icc1f(k) = Ia*Ibase; 
    %%%%%%%%%%%%%%%%%%
end

switch(tipo)
    case 1
        Imonof = strcat(num2str(abs(Icc1f(barra))),'<',num2str(180*angle(Icc1f(barra))/pi),'° kA');
    case 2
        Ibifa = strcat(num2str(abs(Icc2f(barra))),'<',num2str(180*angle(Icc2f(barra))/pi),'° kA');
        Ibifa2 = strcat(num2str(abs(Icc2f(barra))),'<',num2str(180*angle(Icc2f(barra))/pi+180),'° kA');
    case 3
        Ibifat = strcat(num2str(abs(Icc2ft(barra))),'<',num2str(180*angle(Icc2ft(barra))/pi),'° kA');
        Ibifat2 = strcat(num2str(abs(Icc2ft2(barra))),'<',num2str(180*angle(Icc2ft2(barra))/pi),'° kA');
    case 4
        Itrifa = strcat(num2str(abs(Icc3f(barra))),'<',num2str(180*angle(Icc3f(barra))/pi),'° kA');
end