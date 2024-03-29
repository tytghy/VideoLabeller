% Parameters for ND2 to video with scalebar and time stamp.

%% File:
% filename, savedir
filename = 'E:\20x_cells.nd2';
savedir = 'E:\';
if ~exist(savedir, 'dir')
    mkdir(savedir)
end

%% Image acquisition:
% objective, nFreqDiv, startTime.

objective = 4;
nFreqDiv = 1;
startTime = 0; % s

%% Exported images:
% exportedT, exportedFreqChannelNo, shortestSideLength, needImgCombined,
% needScalebar, needScaleText, needTimeStamp. 
% Empty for all.

exportPara.exportedT = [1 2000]; % T from T(1) to T(2); blank for all
exportPara.exportEveryNumFrame = 2;

% At most two dimensions can be selected. For example, if channelNo and
% XYNo contains multiple elements, ZNo must be a scalar.
exportPara.exportedFreqNo = []; 
exportPara.exportedChannelNo = []; 
exportPara.exportedXYNo = [];
exportPara.exportedZNo = [];
exportPara.shortestSideLength = 720;

%% 
processPara.contrastMethod = 2; % 0: do nothing; 1: auto contrast; 2: manual contrast
processPara.drawROI = 0; % 0: do nothing; 1: draw ROI.
processPara.needScalebar = 1;
processPara.needScaleText =1;
processPara.needTimeStamp = 1;
processPara.title = {'Phase contrast', 'FITC'}; % title: cell array of character vectors 
processPara.timeLabel = {1, 'Light On'; 100, 'Light Off'};  
% n x 2 cell array.  1st col: frame, 2nd col: label text.  E.g., 1-99 light on. 100-end light off

%% Video:
% isCompressed, frameRate.

isCompressed = 1; % 1 for 'MPEG-4' and 0 for 'Grayscale AVI'
frameRate = 20;  % below 40 fps or wasting resource

%% Snapshot montage:
% needSnapshot, nSnap
needSnapshot = 0;
nSnap = 4;

%% Execute
labelimage;