Fsample = 1/Tsample; % frecuencia de sampleo (en Hz)
t = Results.time; % vector tiempo de 1 segundo

nfft=4096;%el numero de puntos de la fft
Y=fft(Results.signals(3).values,nfft);% tomar la FFT, y llenando con ceros, de manera que el
Y = Y(1:nfft/2); % la FFT es simétrica, así que se tira la mitad
my = abs(Y);% tomar la potencia espectral, módulo alcuadrado de la FFT
f = (0:nfft/2-1)*Fsample/nfft; %construccion del vector de frecuencias
% Genera los plots, titulos y nombres.
figure;
plot(Results.time,Results.signals(3).values);
title('señal');
xlabel('Tiempo (s)');
ylabel('Amplitud ')
figure;
plot(f,my);
title('Amplitud');
xlabel('Frecuencia (Hz)');
