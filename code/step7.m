clear;
T=273:6:351
r=1
for r = 1:1:4
    if (r==1) %red
patmax(1)=1;
patmax(2)=1.0013;
patmax(3)=1.0025;
patmax(4)=1.0038;
patmax(5)=1.005;
patmax(6)=1.0063;
patmax(7)=1.0075;
patmax(8)=1.0088;
patmax(9)=1.01;
patmax(10)=1.0113;
patmax(11)=1.0125;
patmax(12)=1.0138;
patmax(13)=1.015;
patmax(14)=1.0163;

Efficiency(1)=1;
Efficiency(2)=1.0013;
Efficiency(3)=1.0025;
Efficiency(4)=1.0038;
Efficiency(5)=1.005;
Efficiency(6)=1.0063;
Efficiency(7)=1.0075;
Efficiency(8)=1.0088;
Efficiency(9)=1.01;
Efficiency(10)=1.0113;
Efficiency(11)=1.0125;
Efficiency(12)=1.0138;
Efficiency(13)=1.015;
Efficiency(14)=1.0163;

vatzero(1)=1;
vatzero(2)=1.0038;
vatzero(3)=1.0075;
vatzero(4)=1.0113;
vatzero(5)=1.015;
vatzero(6)=1.0188;
vatzero(7)=1.0225;
vatzero(8)=1.0263;
vatzero(9)=1.03;
vatzero(10)=1.0338;
vatzero(11)=1.0375;
vatzero(12)=1.0413;
vatzero(13)=1.045;
vatzero(14)=1.0488;

Isc(1)=1;
Isc(2)=1.0001;
Isc(3)=1.0002;
Isc(4)=1.0002;
Isc(5)=1.0003;
Isc(6)=1.0004;
Isc(7)=1.0005;
Isc(8)=1.0006;
Isc(9)=1.0007;
Isc(10)=1.0007;
Isc(11)=1.0008;
Isc(12)=1.0009;
Isc(13)=1.0001;
Isc(14)=1.00011;

Efnreal(1)=0.50;
Efnreal(2)=0.501;
Efnreal(3)=0.502;
Efnreal(4)=0.503;
Efnreal(5)=0.504;
Efnreal(6)=0.505;
Efnreal(7)=0.506;
Efnreal(8)=0.507;
Efnreal(9)=0.508;
Efnreal(10)=0.509;
Efnreal(11)=0.5010;
Efnreal(12)=0.5011;
Efnreal(13)=0.5012;
Efnreal(14)=0.5013;

Efpreal(1)=-2.10;
Efpreal(2)=-2.11;
Efpreal(3)=-2.12;
Efpreal(4)=-2.13;
Efpreal(5)=-2.14;
Efpreal(6)=-2.15;
Efpreal(7)=-2.16;
Efpreal(8)=-2.17;
Efpreal(9)=-2.18;
Efpreal(10)=-2.19;
Efpreal(11)=-2.110;
Efpreal(12)=-2.111;
Efpreal(13)=-2.112;
Efpreal(14)=-2.113;


ni(1)=1;
ni(2)=1.5;
ni(3)=2.5941;
ni(4)=4.8282;
ni(5)=8.9863;
ni(6)=16.725;
ni(7)=31.13;
ni(8)=57.939;
ni(9)=107.84;
ni(10)=200.71;
ni(11)=373.56;
ni(12)=695.27;
ni(13)=1294.1;
ni(14)=2308.5;

elseif(r==2)%blue

patmax(1)=1;
patmax(2)=1.0013;
patmax(3)=1.0025;
patmax(4)=1.0038;
patmax(5)=1.005;
patmax(6)=1.0063;
patmax(7)=1.0075;
patmax(8)=1.0088;
patmax(9)=1.01;
patmax(10)=1.0113;
patmax(11)=1.0125;
patmax(12)=1.0138;
patmax(13)=1.015;
patmax(14)=1.0163;

Efficiency(1)=1;
Efficiency(2)=1.0013;
Efficiency(3)=1.0025;
Efficiency(4)=1.0038;
Efficiency(5)=1.005;
Efficiency(6)=1.0063;
Efficiency(7)=1.0075;
Efficiency(8)=1.0088;
Efficiency(9)=1.01;
Efficiency(10)=1.0113;
Efficiency(11)=1.0125;
Efficiency(12)=1.0138;
Efficiency(13)=1.015;
Efficiency(14)=1.0163;

vatzero(1)=1;
vatzero(2)=1.0038;
vatzero(3)=1.0075;
vatzero(4)=1.0113;
vatzero(5)=1.015;
vatzero(6)=1.0188;
vatzero(7)=1.0225;
vatzero(8)=1.02629;
vatzero(9)=1.029;
vatzero(10)=1.03379;
vatzero(11)=1.03749;
vatzero(12)=1.04129;
vatzero(13)=1.0449;
vatzero(14)=1.04879;

Isc(1)=1;
Isc(2)=0.99999;
Isc(3)=0.99999;
Isc(4)=0.99998;
Isc(5)=0.99997;
Isc(6)=0.99996;
Isc(7)=0.99995;
Isc(8)=0.99994;
Isc(9)=0.99993;
Isc(10)=0.99993;
Isc(11)=0.99992;
Isc(12)=0.99991;
Isc(13)=0.99990;
Isc(14)=0.99989;

Efnreal(1)=1;
Efnreal(2)=1;
Efnreal(3)=1;
Efnreal(4)=1;
Efnreal(5)=1;
Efnreal(6)=1;
Efnreal(7)=1;
Efnreal(8)=1;
Efnreal(9)=1;
Efnreal(10)=1;
Efnreal(11)=1;
Efnreal(12)=1;
Efnreal(13)=1;
Efnreal(14)=1;

Efpreal(1)=-2.8;
Efpreal(2)=-2.8;
Efpreal(3)=-2.8;
Efpreal(4)=-2.8;
Efpreal(5)=-2.8;
Efpreal(6)=-2.8;
Efpreal(7)=-2.8;
Efpreal(8)=-2.8;
Efpreal(9)=-2.8;
Efpreal(10)=-2.8;
Efpreal(11)=-2.8;
Efpreal(12)=-2.8;
Efpreal(13)=-2.8;
Efpreal(14)=-2.8;


ni(1)=1;
ni(2)=1.5;
ni(3)=2.5941;
ni(4)=4.8282;
ni(5)=8.9863;
ni(6)=16.725;
ni(7)=31.13;
ni(8)=57.939;
ni(9)=107.84;
ni(10)=200.71;
ni(11)=373.56;
ni(12)=695.27;
ni(13)=1294.1;
ni(14)=2408.5;

elseif(r==3)%black
patmax(1)=1;
patmax(2)=0.99417;
patmax(3)=0.98833;
patmax(4)=0.9825;
patmax(5)=0.97667;
patmax(6)=0.97084;
patmax(7)=0.965;
patmax(8)=0.95917;
patmax(9)=0.95334;
patmax(10)=0.9475;
patmax(11)=0.94167;
patmax(12)=0.93584;
patmax(13)=0.93;
patmax(14)=0.92417;

Efficiency(1)=1;
Efficiency(2)=0.99417;
Efficiency(3)=0.98833;
Efficiency(4)=0.9825;
Efficiency(5)=0.97667;
Efficiency(6)=0.97084;
Efficiency(7)=0.965;
Efficiency(8)=0.95917;
Efficiency(9)=0.95334;
Efficiency(10)=0.9475;
Efficiency(11)=0.94167;
Efficiency(12)=0.93584;
Efficiency(13)=0.93;
Efficiency(14)=0.92417;


vatzero(1)=1;
vatzero(2)=0.99583;
vatzero(3)=0.99167;
vatzero(4)=0.98750;
vatzero(5)=0.98333;
vatzero(6)=0.97917;
vatzero(7)=0.975;
vatzero(8)=0.97083;
vatzero(9)=0.96667;
vatzero(10)=0.9625;
vatzero(11)=0.95833;
vatzero(12)=0.95417;
vatzero(13)=0.95;
vatzero(14)=0.94583;

Isc(1)=1;
Isc(2)=0.99996;
Isc(3)=0.99995;
Isc(4)=0.99994;
Isc(5)=0.99993;
Isc(6)=0.99992;
Isc(7)=0.99991;
Isc(8)=0.99990;
Isc(9)=0.99989;
Isc(10)=0.99989;
Isc(11)=0.99988;
Isc(12)=0.99987;
Isc(13)=0.99986;
Isc(14)=0.99985;

Efnreal(1)=0;
Efnreal(2)=0;
Efnreal(3)=0;
Efnreal(4)=0;
Efnreal(5)=0;
Efnreal(6)=0;
Efnreal(7)=0;
Efnreal(8)=0;
Efnreal(9)=0;
Efnreal(10)=0;
Efnreal(11)=0;
Efnreal(12)=0;
Efnreal(13)=0;
Efnreal(14)=0;

Efpreal(1)=-1.4;
Efpreal(2)=-1.4;
Efpreal(3)=-1.4;
Efpreal(4)=-1.4;
Efpreal(5)=-1.4;
Efpreal(6)=-1.4;
Efpreal(7)=-1.4;
Efpreal(8)=-1.4;
Efpreal(9)=-1.4;
Efpreal(10)=-1.4;
Efpreal(11)=-1.4;
Efpreal(12)=-1.4;
Efpreal(13)=-1.4;
Efpreal(14)=-1.4;

ni(1)=1;
ni(2)=1.4295;
ni(3)=2.6704;
ni(4)=4.9884;
ni(5)=9.3186;
ni(6)=17.408;
ni(7)=32.519;
ni(8)=60.747;
ni(9)=113.48;
ni(10)=211.99;
ni(11)=396;
ni(12)=739.76;
ni(13)=1381.9;
ni(14)=2481.5;

else %pink
patmax(1)=1;
patmax(2)=0.99651;
patmax(3)=0.99427;
patmax(4)=0.99327;
patmax(5)=0.99351;
patmax(6)=0.995;
patmax(7)=0.99773;
patmax(8)=1.0017;
patmax(9)=1.0069;
patmax(10)=1.0134;
patmax(11)=1.0211;
patmax(12)=1.03;
patmax(13)=1.0420;
patmax(14)=1.2;

Efficiency(1)=1;
Efficiency(2)=0.99651;
Efficiency(3)=0.99427;
Efficiency(4)=0.99327;
Efficiency(5)=0.99351;
Efficiency(6)=0.995;
Efficiency(7)=0.99773;
Efficiency(8)=1.0017;
Efficiency(9)=1.0069;
Efficiency(10)=1.0134;
Efficiency(11)=1.0211;
Efficiency(12)=1.03;
Efficiency(13)=1.0420;
Efficiency(14)=1.2;

vatzero(1)=1;
vatzero(2)=1.0009;
vatzero(3)=1.0024;
vatzero(4)=1.0044;
vatzero(5)=1.0069;
vatzero(6)=1.01;
vatzero(7)=1.0136;
vatzero(8)=1.0178;
vatzero(9)=1.0225;
vatzero(10)=1.0278;
vatzero(11)=1.0336;
vatzero(12)=1.04;
vatzero(13)=1.0469;
vatzero(14)=1.27;

Isc(1)=1.0000;
Isc(2)=0.99978;
Isc(3)=0.99944;
Isc(4)=0.99925;
Isc(5)=0.9992;
Isc(6)=0.99929;
Isc(7)=0.99953;
Isc(8)=0.99991;
Isc(9)=1.0004;
Isc(10)=1.0011;
Isc(11)=1.0019;
Isc(12)=1.0029;
Isc(13)=1.004;
Isc(14)=1.006;



ni(1)=1;
ni(2)=1.5;
ni(3)=2.5941;
ni(4)=4.8282;
ni(5)=8.9863;
ni(6)=16.725;
ni(7)=31.13;
ni(8)=57.939;
ni(9)=107.84;
ni(10)=200.71;
ni(11)=373.56;
ni(12)=695.27;
ni(13)=1294.1;
ni(14)=2208.5;


        end
%graphing 3x2 grid
 subplot(321), plot(T, patmax), hold on, grid
 axis([260 340 0.9 1.2]), xlabel('T'), ylabel('Patmax')
 title('Maximum Power vs Temperature')
 subplot(322), plot(T, Efficiency), hold on, grid
 axis([260 340 0.9 1.2]), xlabel('T'), ylabel('Efficiency')
 title('Efficiency vs Temperature')
 subplot(323), plot(T, vatzero), hold on, grid
 axis([260 340 0.9 1.3]), xlabel('T'), ylabel('Voc')
 title('Open Circuit Voltage vs Temperature')
 subplot(324), plot(T, Isc), hold on, grid
 axis([260 340 0.999 1.006]), xlabel('T'), ylabel('Joc')
 title('Short Circuit Current Density vs Temperature')
 subplot(325), plot(T, Efnreal,'--'), hold on, plot(T, Efpreal,'--'), hold on, grid
 axis([260 340 -3 2]), xlabel('T'), ylabel('Efn, Efp, Ei(y)')
 title('Quasi Fermi Energy vs Temperature')
 subplot(326), plot(T, ni), hold on, grid
 axis([260 340 1 10^4]), xlabel('T'), ylabel('ni')
 set(gca,'YScale','log')
 title('Intrinsic Carrier Concentration vs Temperature')
end
