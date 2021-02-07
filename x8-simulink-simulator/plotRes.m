load('current.mat', 'bank');


%resPlot(bank, bank.detectionFilters, 'x')

close all

a = find(bank.detHyp == 2, 1, 'first')

magillPlot(bank, [3]);


function resPlot(bank, filToPlot, object)
    for i=2:length(filToPlot)
        figure(i)
        filter = bank.filters{filToPlot(i)};
        idx = isnan(filter.x(1,:));
        if object == 'x'
            dim=filter.stateDim;
            for i=1:dim
                subplot(dim, 1);
                plot(filter.x(i,idx));
            end
        end
    end
end



function magillPlot(bank,instance)
    figure('name', 'Detection Probabiliteies')
    N = length(bank.detectionFilters);
    
    for i=2:N
        subplot(N-1, 1, i-1)
        hold on
        prob = bank.detProb{instance}(2*i-1:2*i, :);
        plot(prob(1,:), 'LineWidth', 2, 'DisplayName', bank.filters{1}.label)
        plot(prob(2,:), 'LineWidth', 2, 'DisplayName', bank.filters{i}.label)
        legend;
        xlabel("Samples")
        ylabel("Probablitiy")
    end
end