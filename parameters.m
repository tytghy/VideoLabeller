% Parameters for ND2 to video with scalebar and time stamp.

%% File:
% filename, savedir
filename = 'G:\project\20220306_510_flask\4x_510_17h_OD15_closePDMSchamber30C.nd2';
% savedir = 'E:\exp_script\GitProject\sample\';
[filedir, file, ~] = fileparts(filename);
savedir = strrep(filedir, 'project', 'project_processed');
if ~exist(savedir, 'dir')
    mkdir(savedir)
end

%% Image acquisition:
% objective, nFreqChannel, nPosFrames.

objective = 4;
nFreqDiv = 1;
startTime = 0; % s

%% Exported images:
% slice, exportedFreqChannelNo, shortestSideLength, isImgCombined,
% hasScalebar, hasScaleText, hasTimeStamp.

exportPara.slice = [1 540];
exportPara.exportEveryNumFrame = 2;

% At most two dimensions can be selected. For example, if channelNo and
% XYNo contains multiple elements, ZNo must be a scalar.
exportPara.exportedFreqNo = []; 
exportPara.exportedChannelNo = []; 
exportPara.exportedXYNo = [];
exportPara.exportedZNo = [];
exportPara.shortestSideLength = 720;

processPara.contrastMethod = 2; % 0: no contrast; 1: auto contrast; 2: manual contrast
processPara.isImgCombined = 1;
processPara.hasScalebar = 1;
processPara.hasScaleText =1;
processPara.hasTimeStamp = 1;

%% Video:
% isCompressed, frameRate.

isCompressed = 1; % 1 for 'MPEG-4' and 0 for 'Grayscale AVI'
frameRate = 20;

%% Snapshot montage:
% needSnapshot, nSnap
needSnapshot = 1;
nSnap = 4;

%% EXE
demolabelimg;