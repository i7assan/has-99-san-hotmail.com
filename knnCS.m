function result = knnCS(testSet, trainSet, k)
    sims = {};
    neighbours = table;
    
    for i = 1:height(testSet)
        sim = CS(trainSet,testSet(i,:));
        sims = [sims; {testSet(i,:), sim}];
    end
    
    sims = sortrows(sims, 2);
    
    for j = 1:k
        neighbours = [neighbours; sims(j,1)];
    end
    result = neighbours;
end
