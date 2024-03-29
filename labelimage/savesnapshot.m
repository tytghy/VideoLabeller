function savesnapshot(snapshot, postInfo, titleOfImg, savename)
%SAVESNAPSHOT labels and saves the labelled snapshot.
%   savesnapshot(snapshot, postInfo, titleOfImg, savename) labels the first
%   image with titles in [titleOfImg] and the last image with scalebar
%   according to [postInfo] and saves the labelled snapshots in the
%   [savename].

snapshot{end} = labelscale(snapshot{end}, postInfo);
if ~isempty(titleOfImg)
    snapshot{1} = labeltitle(snapshot{1}, postInfo, titleOfImg);
end
fullname = [savename '.jpg'];
fig = figure('Visible','off');
% cdata = montage(snapshot, 'ThumbnailSize', [], Size=[length(snapshot) 2]);
cdata = montage(snapshot, 'ThumbnailSize', []);
axis off
imwrite(cdata.CData, fullname);
close(fig);
disptitle('Successfully save the snapshot in ');
disptitle(fullname);
end
