clear;
Nd=0;
Na=0;
T=300;
%k=1.3807*(10^(-23));
k=8.617*(10^(-5));
nnex=Nd;
ppex=Na;
%h=6.62607004*(10^(-34));
h=4.1357*(10^(-15));
h_prime=h/(2*pi);
me=9.12*(10^(-31))/(1.602*(10^(-19)));
me_prime=0.067*me;
mh_prime=0.53*me;
er=12.9;
eo=8.854*(10^(-12));
step=1*(10^(-5));
Ef=-.68:step:-.67;
Eg=(1.519-(5.406*(10^(-4))*(T^2)/(T+204)));
Evp=-Eg;
Evn=-Eg;
pn0=22.6230;
np0=0.1306;
xj=(0.5*(10^(-6)));
H=.61*(10^(-6));
lp=3*(10^(-6));
Ln=1.8*(10^(-6));
w=0.09*(10^(-6));
dp=5.7*(10^(-4));
dn=32.4*(10^(-4));

%for i=1:length(Ef)
%Ei=Ef(i);
%nfunc=@(E)((2^(1/2)).*(me_prime^(3/2)).*(sqrt(E)))./((pi^2).*(h_prime^3))./(1+exp((E-Ei)./(k.*T)));
%nnac=integral(nfunc, 0, inf);
%if(nnac<abs(1*10^(8)))
%    Efi=Ei;
%    display(Efi);
%end
%end

for j=1:length(Ef)
Ej=Ef(j);
pfunc1=@(E)((2^(1/2)).*(mh_prime^(3/2)).*(sqrt(E)))/((pi^2).*(h_prime^3))./(1+exp((E-(Evp-Ej))./(k.*T)));
ppac=integral(pfunc1, 0, inf);
if(ppac<abs(2.306*10^(12))&&ppac>(2.305*10^(12)))
    Efi=Ej;
    display(Efi);
    display(ppac);
end
end

left=0:8.089*10^(-13):xj;
pnleft=0;
for x=0:length(left)
    pfunc2=@(E)((2^(1/2)).*(mh_prime^(3/2)).*(sqrt(E)))/((pi^2).*(h_prime^3))./(1+exp((E-(Evp-Efi+(1.602*10^(-19))))./(k.*T)));
    pn=integral(pfunc2, 0, inf);
    pnleft=pnleft+pn;
end
display(pnleft);

right=xj:3.084*10^(-11):H;
npright=0;
for x=0:length(right)
    pfunc3=@(E)((2^(1/2)).*(me_prime^(3/2)).*(sqrt(E)))./((pi^2).*(h_prime^3))./(1+exp((E-Efi-(1.602*10^(-19)))./(k.*T)));
    np=integral(pfunc2, 0, inf);
    npright=npright+np;
end
display(npright);

guesses=1:1:100;
for i1=0:length(guesses)
    A1=7.515*10^(17)+i1*10^(14);
    for i2=0:length(guesses)
        B1=3.956*10^(18)+i2*10^(15);
        eq1=A1*cosh(xj/lp)+B1*sinh(xj/lp)+pn0;
        if (abs(eq1/pnleft)>.99999&&abs(eq1/pnleft)<1.00001)
            %display(eq1);
            display(A1);
            display(B1);
        end
    end
end

guesses=1:1:100;
for i1=0:length(guesses)
    A2=(8.22*10^(15))+(i1*10^(11));
    for i2=0:length(guesses)
        B2=(-8.22*10^(15))-(i2*10^(11));
        eq2=(A2*cosh((H-(xj+w))/Ln)) + (B2*sinh((H-(xj+w))/Ln))+np0;
        if (abs(eq2/npright)>.98940&&abs(eq2/npright)<.98942&&abs(A2/B2)>.99999&&abs(A2/B2)<1.00001)
            %display(eq2);
            display(A2);
            display(B2);
        end
    end
end

syms x;
diff1=A1*cosh(x/lp)+B1*sinh(x/lp);
diff2=(A2*cosh((x-(xj+w))/Ln)) + (B2*sinh((x-(xj+w))/Ln));
y1=diff(diff1,x);
y2=diff(diff2,x);
ans1=vpa(subs(y1,x,0));
ans2=vpa(subs(y2,x,.61*(10^(-6))));
Jpi=1.602*(10^(-19))*dp*ans1;
Jni=-1.602*(10^(-19))*dn*ans2;
display(Jpi);
display(Jni);
Jinj=Jni+Jpi;
display(Jinj);

