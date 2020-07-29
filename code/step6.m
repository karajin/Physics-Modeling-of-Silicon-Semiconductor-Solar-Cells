clear;
T=273:6:350;
dn=32.4*(10^(-4));
tn0=1*(10^(-9));
Ln=1.8*(10^(-6));
dp=5.7*(10^(-4));
tp0=15.8*(10^(-9));
lp=3*(10^(-6));
w=1.0195*(10^(-7));
vd=1.4435/(1.602*10^(-19));
vd1=1.4;
h=300*(10^(-6));
xj=(0.5*(10^(-6)));
sp=1*(10^3);
sn=10^80;
a=5*(10^6);
f=5*(10^27);
r=0.1;
k=1.3807*(10^(-23));
k2=8.617*(10^(-5));
step=.00005;
vj=0:step:2;
lambda=600*(10^(-9));
q=1.602*(10^(-19));
H=6.626*10^(-34);
H2=300*(10^(-6));
c=3*(10^8);

%uncomment for constant 
np0=0.1306;
pn0=22.6230;
pnleft=1.4250*(10^18);
npright=8.2246*(10^15);


hprime = h -(xj+w);
h2=4.1357*(10^(-15));
h_prime=h2/(2*pi);
me=9.12*(10^(-31))/(1.602*(10^(-19)));
me_prime=0.067*me;
mh_prime=0.53*me;
ei=0;


for y= 1:length(T)
Ti=T(y);
display(Ti);
    for r = 1:1:4
        display(r);
        if(r==1)
    %gv=@(E)(4.0924*(10^55)).*(E.^(1/2));
    %gc=@(E)(1.8394*(10^54))*(E.^(1/2));
    na=2*(10^18)*(10^(6));
    nd=2*(10^17)*(10^(6));
    
        elseif(r==2)
    %gv=@(E)(2.2074*(10^34))*(E.^(-1/2));
    %gc=@(E)(9.9215*(10^32))*(E.^(-1/2));
    na=2*(10^19)*(10^(6));
    nd=8*(10^17)*(10^(6));

        elseif(r==3)
    %gv=@(E)(1.8993*(10^23))*(E.^(-1));
    %gc=@(E)(8.5368*(10^21))*(E.^(-1));
    na=3.25*(10^18)*(10^(6));
    nd=1.45*(10^17)*(10^(6));
        else 
    %gv=@(E)(3.5362*(10^11))*(E.^(-3/2));
    %gc=@(E)(1.5894*(10^10))*(E.^(-3/2));
    na=10.174*(10^18)*(10^(6));
    nd=4.573*(10^17)*(10^(6));
        end

Eg=(1.519-(5.405*(10^(-4))*(Ti^2)/(Ti+204)));
et(y)=-Eg/2;
a1=(q*f*(1-r)*a*lp)/((a^2)*(lp^2)-1);
b1=(sp*lp/dp)+a*lp;
c1=exp(-a*xj)*((sp*lp/dp)*cosh(xj/lp)+sinh(xj/lp));
d1=(sp*lp/dp)*sinh(xj/lp)+cosh(xj/lp);
e1=a*lp*exp(-a*xj);
jp= a1*((b1-c1)/d1-e1);

a2 =((q*f*(1-r)*a*Ln)/((a^2)*(Ln^2)-1));
a22=exp(-a*(xj+w));
b2=a*Ln;
c2=(sn*Ln/dn)*(cosh(hprime/Ln)-exp(-a*hprime));
d2=sinh(hprime/Ln)+a*Ln*exp(-a*hprime);
e2=(sn*Ln/dn)*sinh(hprime/Ln) + cosh(hprime/Ln);
jn= a22*a2*(b2-(c2+d2)/e2);

Evp=-Eg;
Evn=-Eg;


%Fermi energy Ei(y) and intrinsic concetration ni
step=1*(10^(-5));
Ef=-.68:step:-.67;
for j=1:length(Ef)
Ej=Ef(j);
%pfunc1=@(E)gv./(1+exp((E-(Evp-Ej))./(k2.*Ti)));
if (r==1)
     pfunc1=@(E)(4.0924*(10^55)).*(E.^(1/2))./(1+exp((E-(Evp-Ej))./(k2.*Ti)));
elseif (r==2)
     pfunc1=@(E)(2.2074*(10^34)).*(E.^(-1/2))./(1+exp((E-(Evp-Ej))./(k2.*Ti)));
elseif (r==3)
    pfunc1=@(E)(1.8993*(10^23)).*(E.^(-1))./(1+exp((E-(Evp-Ej))./(k2.*Ti)));
else
    pfunc1=@(E)(3.5362*(10^11))*(E.^(-3/2))./(1+exp((E-(Evp-Ej))./(k2.*Ti)));
end
ni(y)=integral(pfunc1, 10^(-6)*k2*Ti, inf);
if(ni(y)<abs(9*10^(13))&&ni(y)>(1*10^(10)))
    Ei(y)=Ej;
    break
end
end


a3=q*(dp/lp)*((ni(y)^2)/nd);
b3=(sp*lp/dp)*cosh(xj/lp)+sinh(xj/lp);
c3=(sp*lp/dp)*sinh(xj/lp)+cosh(xj/lp);
d3=q*(dn/Ln)*((ni(y)^2)/na);
e3=(sn*Ln/dn)*cosh(hprime/Ln)+sinh(hprime/Ln);
f3=(sn*Ln/dn)*sinh(hprime/Ln)+cosh(hprime/Ln);
jo=a3*(b3/c3)+d3*(e3/f3);

jdr= q*f*(1-r)*exp(-a*xj)*(1-exp(-a*w));
jph= jp + jn + jdr;



%Efn
step=1*(10^(-6));
Efn=-.025:step:-0.005;
Efp=-1.50:step:-1.40;
nnex=nd;
ppex=na;
for cnt=1:length(Efn)
Ecnt=Efn(cnt);
%nfunc=@(E)gc./(1+exp((E-Ecnt)./(k2.*Ti)));
if(r==1)
    nfunc=@(E)(1.8394*(10^54))*(E.^(1/2))./(1+exp((E-Ecnt)./(k2.*Ti)));
elseif(r==2)
    nfunc=@(E)(9.9215*(10^32))*(E.^(-1/2))./(1+exp((E-Ecnt)./(k2.*Ti)));
elseif(r==3)
    nfunc=@(E)(8.5368*(10^21))*(E.^(-1))./(1+exp((E-Ecnt)./(k2.*Ti)));
else
    nfunc=@(E)(1.5894*(10^10))*(E.^(-3/2))./(1+exp((E-Ecnt)./(k2.*Ti)));
end
nnac=integral(nfunc, 10^(-6)*k2*Ti, inf);
if(abs(nnac/nnex)<1.0001&&abs(nnac/nnex)>0.9999)
    Efnreal(y)=Ecnt;
end
end



%Efp
for cnt2=1:length(Efp)
Ecnt2=Efp(cnt2);
%pfunc=@(E)gv./(1+exp((E-Evp+Ecnt2)./(k2.*Ti)));
if(r==1)
    pfunc=@(E)(4.0924*(10^55)).*(E.^(1/2))./(1+exp((E-Evp+Ecnt2)./(k2.*Ti)));
elseif(r==2)
    pfunc=@(E)(2.2074*(10^34)).*(E.^(-1/2))./(1+exp((E-Evp+Ecnt2)./(k2.*Ti)));
elseif(r==3)
    pfunc=@(E)(1.8993*(10^23)).*(E.^(-1))./(1+exp((E-Evp+Ecnt2)./(k2.*Ti)));
else
    pfunc=@(E)(3.5362*(10^11))*(E.^(-3/2))./(1+exp((E-Evp+Ecnt2)./(k2.*Ti)));
end
ni2=integral(pfunc, 10^(-6)*k2*Ti, inf);
if(abs(ni2/ppex)<1.0001&&abs(ni2/ppex)>.9999)
    Efpreal(y)=Ecnt2;
end
end


%np0 and pn0
%for t=1:length(vj)
%vi=vj(t);
%npfunc=@(E)gc./(1+exp((E-((Efpreal(y))+vi*1.602*10^(-19)))./(k2.*Ti)));
%np(t)=integral(npfunc, 0, inf);
%pnfunc=@(E)(gv(E))./(1+exp((E-(Evn-(Efnreal(y))+vi*1.602*10^(-19)))./(k2.*Ti)));
%pn(t)=integral(pnfunc, 10^(-6)*k2*Ti, inf);
%if(vi==0.1)
%np0=np(t);
%pn0=pn(t);
%end
%end


%pn
%left=0:8.089*10^(-13):xj;
%pnleft=0;
%for x=0:length(left)
%pfunc2=@(E)gv./(1+exp((E-(Evp-Ei(y)+(1.602*10^(-19))))./(k2.*Ti)));
%pn=integral(pfunc2, 10^(-6)*k2*Ti, inf);
%pnleft=pnleft+pn;
%end


%np
%right=xj:8.467*10^(-8):H2;
%npright=0;
%for x=0:length(right)
%pfunc3=@(E)gc./(1+exp((E-Ei(y)-(1.602*10^(-19)))./(k2.*Ti)));
%np=integral(pfunc3, 10^(-6)*k2*Ti, inf);
%npright=npright+np;
%end



max=0;
%max power
vatmax(y)=0;
%open cuitcuit voltage
vatzero(y)=0;
small=500000;
jatmax=0;
%short circuit current  
Isc(y)=0;
for i=1:length(vj)
vi=vj(i);
jinj(i)= jo*(exp(q*vi/(k*Ti))-1);
b(i)=( (exp(-q*vi/(2*k*Ti))) * cosh((et(y)-ei)/(k*Ti)+(1/2)*log(tp0/tn0)) );
func=@(x) 1./((x.^2)+(2*b(i).*x)+1);
fb(i)=integral(func,0,inf);
jrg(i)=( (q*ni(y)*w) / (sqrt(tn0*tp0)) ) * ( (2*sinh(q*vi/(2*k*Ti))) / (q*(vd-vi)/(k*Ti)) ) * fb(i);
jdark(i)=jinj(i) + jrg(i);
jout(i)=jph-jdark(i);
if(vi==0)  
Isc(y)=jout(i);
end
tmp=vi*jout(i);
if(max<tmp)
max=tmp;
vatmax(y)=vi;
jatmax(y)=jout(i);
end
if(abs(jout(i))<small)
small=jout(i);
vatzero(y)=vi;
end
end

%calculating max power and efficiency 
patmax(y)=vatmax(y)*jatmax(y);
FF(y)=patmax(y)/(Isc(y)*1.3795);
Efficiency(y)=patmax(y)/(H*(c/lambda)*f)*100;

    end
end

%graphing 3x2 grid 
subplot(321), plot(T, patmax), hold on, grid
axis([260 340 6*10^8 7*10^8]), xlabel('T'), ylabel('Patmax')
title('Maximum Power vs Temperature')
subplot(322), plot(T, Efficiency), hold on, grid
axis([260 340 36 40]), xlabel('T'), ylabel('Efficiency')
title('Efficiency vs Temperature')
subplot(323), plot(T, vatzero), hold on, grid
axis([260 340 1.3 1.5]), xlabel('T'), ylabel('Voc')
title('Open Circuit Voltage vs Temperature')
subplot(324), plot(T, Isc), hold on, grid
axis([260 340 4.9*10^8 5.1*10^8]), xlabel('T'), ylabel('Joc')
title('Short Circuit Current Density vs Temperature')
subplot(325), plot(T, Efnreal), hold on, plot(T, Efpreal), hold on, plot(T, Ei), grid
axis([260 340 -2 0.3]), xlabel('T'), ylabel('Efn, Efp, Ei(y)')
title('Quasi Fermi Energy vs Temperature')
subplot(326), plot(T, ni), hold on, grid
axis([260 340 0 9*10^13]), xlabel('T'), ylabel('ni')
title('Intrinsic Carrier Concentration vs Temperature')



