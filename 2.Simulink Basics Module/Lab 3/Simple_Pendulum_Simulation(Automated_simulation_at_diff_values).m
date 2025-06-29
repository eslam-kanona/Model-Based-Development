g=9.81;
L=1;

model1=gcs;
runvalues=1:2:10;

for i=1:numel(runvalues)
    L= runvalues(i);
    result = sim(model1);
subplot(3,1,2)

    plot(result.logsout.get('W.').Values);
        hold on

subplot(3,1,1)

    plot(result.logsout.get('W').Values);

    
    hold on

subplot(3,1,3)

    plot(result.logsout.get('W..').Values);

    
    hold on

end