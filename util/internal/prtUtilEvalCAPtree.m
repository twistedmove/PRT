function Yout = prtUtilEvalCAPtree(tree,X)
%Yout = evalCAPtree(tree,X)
%   Evaluate a CAP tree on a 1xN data point X
% Internal 
% xxx Need Help xxx

index = 1;
voted = 0;
while ~voted
    if any(isfinite(tree.W(:,index)))
        %disp(((tree.W(:,index)'*X(:,tree.featureIndices(:,index))')') - tree.threshold(:,index))
        Yout = double(((tree.W(:,index)'*X(:,tree.featureIndices(:,index))')' - tree.threshold(:,index)) >= 0);
        if Yout == 0
            index = find(tree.treeIndices(:) == index,1,'first');
        elseif Yout > 0
            index = find(tree.treeIndices(:) == index,1,'last');
        end
    else
        Yout = tree.terminalVote(index);
        voted = 1;
    end
end

