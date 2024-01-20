function J = alphaBlend(FG,BG,alpha)
    if length(size(FG)) == 3
        FG=rgb2gray(FG);
    end
    if length(size(BG))==3
        BG = rgb2gray(BG);
    end
    
    [row,col] = size(FG);
    
    J = FG;
    for x = 1 : row
        for y = 1 : col
            J(x,y) = alpha * BG(x,y) + (1 - alpha) * FG(x,y);
        end
    end
    