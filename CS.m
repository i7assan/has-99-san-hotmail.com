function result = CS(x,y)
    result = (x'*y)/(sqrt(sum((x).^2)) * sqrt(sum((y).^2)));
    
end