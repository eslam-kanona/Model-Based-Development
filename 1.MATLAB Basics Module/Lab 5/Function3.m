sampleData = [5, 10, 15, 20, 25];

[avg, deviation] = computeStatistics(sampleData);

disp(avg)
disp(deviation)

function [meanVal, stdVal] = computeStatistics(data)
    meanVal = mean(data);
    stdVal = std(data);
end