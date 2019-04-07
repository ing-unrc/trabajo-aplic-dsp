clc,clear all;close all;

global Fs

% Simulation parameters
RelTol=1e-10;               % Relative tolerance
totalSim=50e-3;             % Stop simulation time
StepTime=0.01e-3;             % discrete 
Tsample = 1/20000           % 

% System parameters
Fs = 3000;                 % switching frequency
Ts = 1/Fs;                  % switching period

ma = 0.8;
f1 = 50*2*pi;

%  Design
L=100e-3;                % leakage inductor
C=20e-6;                % output filter capacitor
%DeadTime = 1e-6;         % Dead time

vcc = 100;                   % input voltage

%  Load
Rload = 78.26;

Modo = 1;

who

open SinglePhaseInverter.slx
sim SinglePhaseInverter.slx

PlotResults



