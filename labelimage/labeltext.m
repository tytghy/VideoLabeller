function imgText = labeltext(img, barInfo)

[imgCatHeight, imgCatWidth] = size(img,[1 2]);
[barHeight, barWidth, right, bot, barcolor] = deal(barInfo.barHeight, barInfo.barWidth, barInfo.right, barInfo.bot, barInfo.barcolor);
imgText = zeros(size(img), 'like', img);
text = [num2str(barInfo.scalebarUm) ' μm'];
position = [imgCatWidth-right-barWidth/2 imgCatHeight-bot-1.5*barHeight];

for iDim5 = 1:size(img, 5)
    for iDim4 = 1:size(img, 4)
        for iDim3 = 1:size(img, 3)
            RGB = insertText(img(:,:,iDim3, iDim4, iDim5),position,text,'FontSize',28,'BoxOpacity', 0, 'TextColor',barcolor, 'AnchorPoint',"CenterBottom");
            imgText(:,:,iDim3, iDim4, iDim5) = RGB(:,:,1);
        end
    end
end
end