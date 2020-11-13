% plot calculated pH vs CTD ph

load('cruise1.mat')
load('cruise2.mat')

figure;
set(gcf, 'Renderer', 'Painters');
scatter(cruise1.pHcalc(1:5), cruise1.pHCTD(1:5), 70, cruise1.PressuredB(1:5), 'filled', 'MarkerEdgeColor', 'm', 'Linewidth', 2);
hold on
scatter(cruise1.pHcalc(6:10), cruise1.pHCTD(6:10), 70, cruise1.PressuredB(6:10), 'filled', 'MarkerEdgeColor', 'r', 'Linewidth', 2);
scatter(cruise1.pHcalc(11:15), cruise1.pHCTD(11:15), 70, cruise1.PressuredB(11:15), 'filled', 'MarkerEdgeColor', 'c', 'Linewidth', 2);
scatter(cruise1.pHcalc(16:20), cruise1.pHCTD(16:20), 70, cruise1.PressuredB(16:20), 'filled', 'MarkerEdgeColor', 'b', 'Linewidth', 2);
xlim([8, 8.35])
ylim([8, 8.35])
refline(1,0);
axis square
xlabel('Calculated pH')
ylabel('CTD pH')
c = colorbar; 
c.Label.String = 'Pressure (dB)';
colormap(flipud(bone))
l = legend('WF','5','4','Race', '1:1', 'Location', 'NorthWest');
title(l, 'Station');
title('Cruise 1');
print('Cruise1_calcvCTDpH','-dpng');

figure;
set(gcf, 'Renderer', 'Painters');
scatter(cruise2.pHcalc(1:5), cruise2.CTD(1:5), 70, cruise2.PressuredB(1:5), 'filled', 'MarkerEdgeColor', 'g', 'Linewidth', 2);
hold on
scatter(cruise2.pHcalc(6:10), cruise2.CTD(6:10), 70, cruise2.PressuredB(6:10), 'filled', 'MarkerEdgeColor', 'y', 'Linewidth', 2);
scatter(cruise2.pHcalc(11:15), cruise2.CTD(11:15), 70, cruise2.PressuredB(11:15), 'filled', 'MarkerEdgeColor', 'b', 'Linewidth', 2);
scatter(cruise2.pHcalc(16:20), cruise2.CTD(16:20), 70, cruise2.PressuredB(16:20), 'filled', 'MarkerEdgeColor', 'm', 'Linewidth', 2);
scatter(cruise2.pHcalc(21:25), cruise2.CTD(21:25), 70, cruise2.PressuredB(21:25), 'filled', 'MarkerEdgeColor', 'k', 'Linewidth', 2);
scatter(cruise2.pHcalc(26:30), cruise2.CTD(26:30), 70, cruise2.PressuredB(26:30), 'filled', 'MarkerEdgeColor', [0.85,0.33,0.09], 'Linewidth', 2);
scatter(cruise2.pHcalc(31:35), cruise2.CTD(31:35), 70, cruise2.PressuredB(31:35), 'filled', 'MarkerEdgeColor', [0.49,0.18,0.56], 'Linewidth', 2);
xlim([8, 8.35])
ylim([8, 8.35])
refline(1,0);
axis square
xlabel('Calculated pH')
ylabel('CTD pH')
c = colorbar; 
c.Label.String = 'Pressure (dB)';
colormap(flipud(bone))
l = legend('6','WF lite','Race','WF', 'Slope','8','7', '1:1', 'Location', 'NorthWest');
title(l, 'Station');
title('Cruise 2');
print('Cruise2_calcvCTDpH','-dpng');
