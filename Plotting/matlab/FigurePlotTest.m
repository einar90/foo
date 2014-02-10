%% Script used for testing the FigurePlot class
clear all; close all; clc;

XLen  = 50;            % Length of x-vector to use
XVec  = linspace(0,10,XLen);  % X-vector for testing
YVec1 = [sin(XVec)];  % First y-vector for testing
YVec2 = [cos(XVec)];  % Second y-vector for testing
YVec3 = [tan(XVec)];  % Third y-vector for testing

% Creating object
Fig = FigurePlot('TestFigure', XVec);

% Adding y vectors
Fig.AddYVec(YVec1, 'Vector 1', 'b');
Fig.AddYVec(YVec2, 'Vector 2', 'r');
Fig.AddYVec(YVec3, 'Vector3', 'k');  % Space not included for var. len. check

% Setting plot labels and axis'
Fig.PlotLabels('title2','xx','yy');
Fig.SetAxis(0, 15, -10, 10);

% Setting legend position
Fig.SetLegendLoc('North');

% Saving plot
Fig.FileFormat('png');
Fig.SetResolution(100);
Fig.SetSize(800, 500);
Fig.SavePlot();

% Figure 2 (minimal)
Fig2 = FigurePlot('TestFigure2', XVec);
Fig2.AddYVec(YVec1, 'Vector 1', 'g');
Fig2.SavePlot();