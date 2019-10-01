v = 75;
j = 120;
T = j/v;
t = 0:T/200:T;
m = length(t);
S = 0;
for k = 1 : m-1
    v1(k) = v +(randn(1) * 10);
    S(k+1) = S(k)+(t(k+1)-t(k))*v1(k) ;
    v2(k)= (S(k+1) - S(k))/(t(k+1)-t(k));
    e(k)=v2(k)-v1(k);
    if (k>2)
        a(k)=(v2(k)-v2(k-1))*1000/(3600*(t(k)-t(k-2)))
    end
    figure (2)
    subplot(2,2,1)
    plot (t(1:k), S(1:k))
    grid on
    xlabel('waktu(jam)')
    ylabel ('posisi(km)')
    subplot(2,2,2)
    plot (t(1:k), v1(1:k),'r',t(1:k),v2(1:k),'g')
    grid on
    xlabel('waktu(jam)')
    ylabel ('kecepatan(km/jam)')
    subplot(2,2,3)
    plot (t(1:k),e(1:k),'r')
    grid on
    axis([0 1.6 -1 1])
    subplot(2,2,4)
    plot (t(1:k),a(1:k))
    grid on 
    pause(0.1);
end
