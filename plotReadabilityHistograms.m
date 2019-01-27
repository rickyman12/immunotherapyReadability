% load variables
load('readVars.mat')

% define figure
figure;

% plot kincaid
hold on;
hSmog = histogram(smog,0:2:30, 'EdgeColor', 'green', 'EdgeAlpha', 0.5, 'FaceColor', 'none'); %, 'FaceAlpha', 0.1,
hKincaid = histogram(kincaid,0:2:26, 'EdgeColor', 'red', 'EdgeAlpha', 0.5, 'FaceColor', 'none'); %, 'FaceAlpha', 0.1,
hGun = histogram(gunningFogIndex,0:2:30, 'EdgeColor', 'blue','EdgeAlpha', 0.5, 'FaceColor', 'none'); %, 'FaceAlpha', 0.1,

% plot mean lines
line([mean(smog), mean(smog)], [0 max(hSmog.Values)+1], 'Color', 'green', 'LineStyle', '--', 'LineWidth', 3)
line([mean(kincaid), mean(kincaid)], [0 max(hKincaid.Values)+1], 'Color', 'red', 'LineStyle', '--', 'LineWidth', 3)
line([mean(gunningFogIndex), mean(gunningFogIndex)], [0 max(hGun.Values)+1], 'Color', 'blue', 'LineStyle', '--', 'LineWidth', 3)

% plot mean with text
text(mean(smog), max(hSmog.Values)+1, ['SMOG Mean: ', num2str(mean(smog))], 'Color', 'green', 'FontSize', 15)
text(mean(kincaid), max(hKincaid.Values)+1, ['FKGL Mean: ', num2str(mean(kincaid))], 'Color', 'red', 'FontSize', 15)
text(mean(gunningFogIndex), max(hGun.Values)+1, ['GFI Mean: ', num2str(mean(gunningFogIndex))], 'Color', 'blue', 'FontSize', 15)

% format figure
box off
set(gca, 'FontSize', 20)
set(gca, 'XTick', [0 10 20])
set(gca, 'YTick', [0 10 20])
ylim([0 20])
ylabel('# of websites', 'FontSize', 25)
xlabel('Estimated Years of Education Required', 'FontSize', 25)
set(get(gca,'YLabel'),'Rotation',0)

% plot readability ease
figure; 
hFlesch = histogram(fleschReadingEase,-10:10:90, 'EdgeColor', 'black', 'EdgeAlpha', 0.5, 'FaceColor', 'none'); %, 'FaceAlpha', 0.1,

% plot mean lines
line([mean(fleschReadingEase), mean(fleschReadingEase)], [0 max(hFlesch.Values)+1], 'Color', 'black', 'LineStyle', '--', 'LineWidth', 3)

% plot mean with text
text(mean(fleschReadingEase), max(hFlesch.Values)+1, ['FRES Mean: ', num2str(mean(fleschReadingEase))], 'Color', 'black', 'FontSize', 15)

% format figure
box off
set(gca, 'FontSize', 25)
set(gca, 'XTick', [-10:20:80])
xlim([-15 85])
set(gca, 'YTick', [0 5 10 15])
ylim([0 15])
ylabel('# of websites', 'FontSize', 30)
xlabel('Flesch Reading Ease Score (FRES)', 'FontSize', 30)
set(get(gca,'YLabel'),'Rotation',0)