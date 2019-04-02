clc
close all
%******************
%******************
ancho_figura = 8.59;
alto_figura = 12;

x = 1.1;
ancho = 7;
y0 = 1;
alto = alto_figura/5;
margenv = .7;

figura = figure(1);
set(figura,'units','centimeters');
set(figura,'position',[7 1 ancho_figura alto_figura*1]);
set(figura,'paperunits','centimeters');
set(figura,'papersize',[ancho_figura alto_figura*1]);
set(figura,'paperpositionmode','auto');

%******************
%******************
figure(1)

subplot(5,1,1);

fL = Fs;
CicloInit = 0;
CicloFinish = 6.4;
times=Results.time';
CantidadCiclos = times(end)*fL;
PasoVectorDatos = times(end)/length(times);
CuentasPorCiclo = 1/fL/PasoVectorDatos;
init = CicloInit*CuentasPorCiclo;
finish = CicloFinish*CuentasPorCiclo;
plot(Results.time,Results.signals(1).values,'k','LineWidth',1);grid on, box on,
set(gca,'fontname','Times New Roman');
set(gca,'fontsize',8);
ylabel('$v_{cc}$','units','centimeters','position',[-.6 alto/2-0.5],'interpreter','latex','fontsize',10);

set(gca,'OuterPosition',[0 0.78 1 0.2]);
%set(gca,'XTickLabel','|||||')
set(gca,'XTickLabel','')

axis([0.01 0.05 90 110]);


%****************
subplot(5,1,2);
plot(Results.time,Results.signals(2).values,'k','LineWidth',1);grid on, box on,

set(gca,'fontname','Times New Roman');
set(gca,'fontsize',8);
ylabel('$i_{cc}$','units','centimeters','position',[-.6 alto/2-0.5],'interpreter','latex','fontsize',10);

set(gca,'OuterPosition',[0 0.58 1 0.2]);

set(gca,'XTickLabel','')
axis([0.01 0.05 -0.5 1]);

%return

%****************
subplot(5,1,3);
plot(Results.time,Results.signals(3).values,'k','LineWidth',1);grid on, box on,

set(gca,'fontname','Times New Roman');
set(gca,'fontsize',8);
ylabel('$v_{pwm}$','units','centimeters','position',[-.6 alto/2-0.5],'interpreter','latex','fontsize',10);

set(gca,'OuterPosition',[0 0.38 1 0.2]);
set(gca,'XTickLabel','')

axis([0.01 0.05 -150 150]);

%return

%****************

subplot(5,1,5);
plot(Results.time,Results.signals(4).values,'k','LineWidth',1);grid on, box on,

set(gca,'fontname','Times New Roman');
set(gca,'fontsize',8);
ylabel('$i_{Load}$','units','centimeters','position',[-.6 alto/2-0.5],'interpreter','latex','fontsize',10);

set(gca,'OuterPosition',[0 0.18 1 0.2]);
%set(gca,'XTickLabel','')

axis([0.01 0.05 -1.5 1.5]);

return

%****************

subplot(6,1,5);
plot(S1.time,S1.signals.values,'k','LineWidth',1);grid on, box on,

set(gca,'fontname','Times New Roman');
set(gca,'fontsize',8);
ylabel('$s_1 , \bar{s}_2$','units','centimeters','position',[-.6 alto/2-0.5],'interpreter','latex','fontsize',10);

set(gca,'OuterPosition',[0 0.19 1 0.2]);
set(gca,'XTickLabel','|||||')
axis([8.0e-3 8.2e-3 -0.5 1.4]);

%return

%****************
subplot(6,1,6);
plot(S3.time,S3.signals.values,'k','LineWidth',1);grid on, box on,

set(gca,'fontname','Times New Roman');
set(gca,'fontsize',8);
ylabel('$s_3 , \bar{s}_4$','units','centimeters','position',[-.6 alto/2-0.5],'interpreter','latex','fontsize',10);
xlabel('$time$','units','centimeters','position',[ancho/2 -.45],'interpreter','latex','fontsize',10);

set(gca,'OuterPosition',[0 0.02 1 0.22]);
%set(gca,'YTickLabel','60|30|0|-30')
%set(gca,'XTickLabel','|||||')
axis([8.0e-3 8.2e-3 -0.5 1.4]);
%****************

%print -depsc -tiff 'StepDown0degNSS.eps'

return
%******************
%******************
ancho_figura = 8.59;
alto_figura = 6;

x = 1.1;
ancho = 7;
y0 = 1;
alto = alto_figura/1;
margenv = .7;

figura = figure(4);
set(figura,'units','centimeters');
set(figura,'position',[7 1 ancho_figura alto_figura*1]);
set(figura,'paperunits','centimeters');
set(figura,'papersize',[ancho_figura alto_figura*1]);
set(figura,'paperpositionmode','auto');

%************************************
figure(4)

subplot(1,1,1);
plot(Vout.signals.values(init:finish),iL.signals.values(init:finish),'k','LineWidth',1);grid on, box on,

set(gca,'fontname','Times New Roman');
set(gca,'fontsize',8);
ylabel('$i_{L}$','units','centimeters','position',[-.6 alto/2-0.5],'interpreter','latex','fontsize',10);
xlabel('$v_{o}$','units','centimeters','position',[ancho/2 -0.45],'interpreter','latex','fontsize',10);


set(gca,'OuterPosition',[0 0.1 1 0.85]);


%print -depsc -tiff 'StepDown0degNSS.eps'