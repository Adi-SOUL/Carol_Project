function [xn, yn] = getFforn(N, M)
len=size(M,1);
T=linspace(0,2*pi,len);
dt=T(2)-T(1);

x=M(:,1);
ax=zeros(N,1);
bx=zeros(N,1);

ax0=0;
for i=1:(len-1)
    ax0=ax0+integral(@(t) xi)+(x(i+1)-x(i))/dt*(t-T(i)),T(i),T(i+1));
end
ax0=ax0/(2*pi);

for n=1:N
    for i=1:(len-1)
        ax(n)=ax(n)+integral(@(t) cos(n*t)*x(i)+(x(i+1)-x(i))/dt*(t-T(i)),T(i),T(i+1));
        bx(n)=bx(n)+integral(@(t) sin(n*t)*x(i)+(x(i+1)-x(i))/dt*(t-T(i)),T(i),T(i+1));
    end
    ax(n)=ax(n)/pi;
    bx(n)=bx(n)/pi;
end

xn=ax0*ones(len,1);
for i=1:len
    for n=1:N
       xn(i)=xn(i)+ax(n)*cos(n*T(i))+bx(n)*sin(n*T(i));
    end
end

y=M(:,2);
ay=zeros(N,1);
by=zeros(N,1);

ay0=0;
for i=1:(len-1)
    ay0=ay0+integral(@(t) y(i)+(y(i+1)-y(i))/dt*(t-T(i)),T(i),T(i+1));
end
ay0=ay0/(2*pi);

for n=1:N
    for i=1:(len-1)
        ay(n)=ay(n)+integral(@(t) cos(n*t)*y(i)+(y(i+1)-y(i))/dt*(t-T(i)),T(i),T(i+1));
        by(n)=by(n)+integral(@(t) sin(n*t)*y(i)+(y(i+1)-y(i))/dt*(t-T(i)),T(i),T(i+1));
    end
    ay(n)=ay(n)/pi;
    by(n)=by(n)/pi;
end

yn=ay0*ones(len,1);
for i=1:len
    for n=1:N
       yn(i)=yn(i)+ay(n)*cos(n*T(i))+by(n)*sin(n*T(i));
    end
end
