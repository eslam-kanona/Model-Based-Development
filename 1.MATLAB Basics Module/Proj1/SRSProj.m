function SRSProj()

    isPaused = false;

    fig = uifigure('Name', 'SRS', 'Position', [100 200 500 500]);

    label1 = uilabel(fig,'Position',[30 25 120 30],'Text','Arm 1 length :');
    label1.Tooltip = 'add Link 1 Length';
    inputField1 = uieditfield(fig, 'numeric', 'Position', [110 30 60 20] ,  'Tooltip', 'add Link 1 Length from 0.5 to 5', 'Limits', [0.1 5], 'Value', 1);
    inputField1.BackgroundColor = 'r';

    label2 = uilabel(fig,'Position',[320 25 120 30],'Text','Arm 2 length :');
    label2.Tooltip = 'add Link 2 Length';
    inputField2 = uieditfield(fig, 'numeric', 'Position', [400 30 60 20] , 'Tooltip', 'add Link 2 Length from 0.5 to 5', 'Limits', [0.1 5], 'Value', 1);
    inputField2.BackgroundColor = 'b';

    ax = uiaxes(fig, 'Position', [0 100 500 400]);
    grid(ax, 'on')
    title(ax, 'Simulation');
    xlabel(ax, 'X');
    ylabel(ax, 'Y');

    button1 = uibutton(fig, 'Text', 'Simulate',  'Position', [200 70 100 22], 'Tooltip', 'Click to start the simulation','ButtonPushedFcn', @(btn,event) runSimulation());

        
       
    button2 = uibutton(fig, 'Text', 'Pause',  'Position', [200 45 100 22],'Tooltip', 'Pause or resume the simulation','ButtonPushedFcn', @(btn,event) togglePause());

        
        
    function togglePause()
        isPaused = ~isPaused;
        if isPaused
            button2.Text = 'Resume';
        else
            button2.Text = 'Pause';
        end
    end
    
    function runSimulation()
        length1 = inputField1.Value;
        length2 = inputField2.Value;

        cla(ax);

        for t = 0:0.05:30
            if isPaused
                pause(0.1);
                continue;
            end

            theta1 = sin(t);          
            theta2 = 0.8 * cos(t);

            arm1x = length1 * cos(theta1);
            arm1y = length1 * sin(theta1);

            arm2x = arm1x + length2 * cos(theta1 + theta2);
            arm2y = arm1y + length2 * sin(theta1 + theta2);

            cla(ax);
            plot(ax, [0 arm1x], [0 arm1y], 'r', 'LineWidth', 1); hold(ax, 'on');
            plot(ax, [arm1x arm2x], [arm1y arm2y], 'b', 'LineWidth', 1); hold(ax, 'off');

            axis(ax, [-5 5 -5 5]);
            grid(ax, 'on');
            drawnow;
            pause(0.001);
        end
    end

end
