clear;
T=300;
na=2*(10^19)*(10^(6));
dn=32.4*(10^(-4));
tn0=1*(10^(-9));
Ln=1.8*(10^(-6));
nd=2*(10^17)*(10^(6));
dp=5.7*(10^(-4));
tp0=15.8*(10^(-9));
lp=3*(10^(-6));
w=1.0195*(10^(-7));
vd=1.4435/(1.602*10^(-19));
ni=2.3054*(10^6)*(10^(6));
h=300*(10^(-6));
xj=(0.5*(10^(-6)));
sp=1*(10^3);
sn=10^50;
a=5*(10^6);
f=5*(10^27);
r=0.1;
k=1.3807*(10^(-23));
ei=0;
step=.00005;
vj=0:step:2;
lambda=600*(10^(-9));
q=1.609*(10^(-19));
H=6.626*10^(-34);
c=3*(10^8);
Eg=(1.519-(5.406*(10^(-4))*(T^2)/(T+204)));
et=-Eg/2;
hprime = h -(xj+w);
%jinj=128.34;

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


a3=q*(dp/lp)*((ni^2)/nd);
b3=(sp*lp/dp)*cosh(xj/lp)+sinh(xj/lp);
c3=(sp*lp/dp)*sinh(xj/lp)+cosh(xj/lp);
d3=q*(dn/Ln)*((ni^2)/na);
e3=(sn*Ln/dn)*cosh(hprime/Ln)+sinh(hprime/Ln);
f3=(sn*Ln/dn)*sinh(hprime/Ln)+cosh(hprime/Ln);
jo=a3*(b3/c3)+d3*(e3/f3);

jdr= q*f*(1-r)*exp(-a*xj)*(1-exp(-a*w));
jph= jp + jn + jdr;


max=0;
vatmax=0;
vatzero=0;
small=500000;
jatmax=0;
initial=0;
for i=1:length(vj)
vi=vj(i);
jinj(i)= jo*(exp(q*vi/(k*T))-1);
b(i)=( (exp(-q*vi/(2*k*T))) * cosh((et-ei)/(k*T)+(1/2)*log(tp0/tn0)) );
func=@(x) 1./((x.^2)+(2*b(i).*x)+1);
fb(i)=integral(func,0,inf);
jrg(i)=( (q*ni*w) / (sqrt(tn0*tp0)) ) * ( (2*sinh(q*vi/(2*k*T))) / (q*(vd-vi)/(k*T)) ) * fb(i);
jdark(i)=jinj(i) + jrg(i);
jout(i)=jph-jdark(i);
if(vi==0)
initial=jout(i);
end
tmp=vi*jout(i);
if(max<tmp)
max=tmp;
vatmax=vi;
jatmax=jout(i);
end
if(abs(jout(i))<small)
small=jout(i);
vatzero=vi;
end
end

patmax=vatmax*jatmax;
FF=patmax/(initial*1.3795);
Efficiency=patmax/(H*(c/lambda)*f)*100;

plot(vj, jout);
xlabel('Vj');
ylabel('Jout');
title('current density per bandwidth vs voltage (J-V) at 300K(step4)');
axis([ 0 1.5 0 650000000]);

%plot(vj, jrg);
%xlabel('Vj');
%ylabel('jrg');
%title('bandwidth vs voltage (J-V) at 300K(step4)')
%axis([ 0 1.5 0 .001]);

disp(vatmax); %voltage at max power
disp(jatmax); %current density at max power
disp(patmax); %max power
disp(FF); %Fill factor
disp(Efficiency); %efficiency
%disp(small);
