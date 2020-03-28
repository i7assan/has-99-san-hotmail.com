function result = knnED(testSet, trainSet, k)
    dists = {};
    neighbours = table;
    
    for i = 1:height(testSet)
        dist = ED(trainSet,testSet(i,:));
        dists = [dists; {testSet(i,:), dist}];
    end
    
    dists = sortrows(dists, 2);
    
    for j = 1:k
        neighbours = [neighbours; dists(j,1)];
    end
    result = neighbours;
end
