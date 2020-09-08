%% Validation meta-analysis, Lazari and Lipp 2020

%% Raincloud plot for sample size
h = raincloud_plot(X, 'box_on', 1, 'color', [1 0.5 0]);
set(gca,'ytick',[]);
title('Sample size');
set(gca, 'FontSize',30);

%% Marker quantification bar plot

tstat= [32 25 17 16 4 2];

figure; hold on;
for mod = 1:6
    hb=bar(mod, abs(tstat(mod)));
    if tstat(mod) > 0
        set(hb,'FaceColor',[0.9290, 0.6940, 0.1250] ); set(hb,'EdgeColor',[0.9290, 0.6940, 0.1250]); set(hb,'BarWidth',0.8);
    else
        set(hb,'FaceColor',[0.3010, 0.7450, 0.9330]); set(hb,'EdgeColor',[0.3010, 0.7450, 0.9330]);
    end
end
mods = {'FA'; 'RD'; 'AD'; 'MD'; 'ADC'; 'AK'};
set(gca,'xtick',[1:6],'xticklabel',mods, 'FontSize',30);
ylim([1 35]);


tstat= [22 12];

figure; hold on;
for mod = 1:2
    hb=bar(mod, abs(tstat(mod)));
    if tstat(mod) > 0
        set(hb,'FaceColor',[0.3010, 0.7450, 0.30] ); set(hb,'EdgeColor',[0.3010, 0.7450, 0.30]); set(hb,'BarWidth',0.8);
    else
        set(hb,'FaceColor',[0.3010, 0.7450, 0.9330]); set(hb,'EdgeColor',[0.3010, 0.7450, 0.9330]);
    end
end
mods = {'MTR'; 'MPF'};
set(gca,'xtick',[1:2],'xticklabel',mods, 'FontSize',30);
ylim([1 35]);


tstat= [16; 13; 7; 4];

figure; hold on;
for mod = 1:4
    hb=bar(mod, abs(tstat(mod)));
    if tstat(mod) > 0
        set(hb,'FaceColor',[0.3010, 0.7450, 0.9330] ); set(hb,'EdgeColor',[0.3010, 0.7450, 0.9330]); set(hb,'BarWidth',0.8);
    else
        set(hb,'FaceColor',[0.3010, 0.7450, 0.9330]); set(hb,'EdgeColor',[0.3010, 0.7450, 0.9330]);
    end
end
mods = {'T1'; 'MWF'; 'T2'; 'T2*'};
set(gca,'xtick',[1:4],'xticklabel',mods, 'FontSize',30);
ylim([1 35]);


tstat= [6];

figure; hold on;
for mod = 1
    hb=bar(mod, abs(tstat(mod)));
    if tstat(mod) > 0
        set(hb,'FaceColor',[1, 0, 0] ); set(hb,'EdgeColor',[1, 0, 0]); set(hb,'BarWidth',0.8);
    else
        set(hb,'FaceColor',[0.3010, 0.7450, 0.9330]); set(hb,'EdgeColor',[0.3010, 0.7450, 0.9330]);
    end
end

mods = {'Susceptibility'};
set(gca,'xtick',[1],'xticklabel',mods, 'FontSize',30);
ylim([1 35]);

%% Histology quantification bar plot

tstat= [30 18 10 6 3 3 3 2];

figure; hold on;
for mod = 1:8
    hb=bar(mod, abs(tstat(mod)));
    set(hb,'EdgeColor','none');
end
mods = {'LFB'; 'MBP'; 'PLP'; 'EM'; 'Black Gold II'; 'Gold Chloride'; 'Toluidine blue'; 'Solochrome'};
set(gca,'xtick',[1:8],'xticklabel',mods, 'FontSize',30);
set(gca,'XTickLabelRotation',45);

ylim([1 30]);

%% Stats quantification bar plot

tstat= [26 19 15 10];

figure; hold on;
for mod = 1:4
    hb=bar(mod, abs(tstat(mod)));
    if mod==2 | mod==1 | mod==4 > 0
        set(hb,'FaceColor',[0.6 0.6 0.6] ); set(hb,'EdgeColor','none'); set(hb,'BarWidth',0.8);
    else
    set(hb,'FaceColor',[0.3010, 0.7450, 0.30] ); set(hb,'EdgeColor','none'); set(hb,'BarWidth',0.8);

end
    set(hb,'EdgeColor','none');
end
mods = {'Between Subjects'; 'Mixed (not modelled)'; 'Within Subject'; 'Unclear'};
set(gca,'xtick',[1:4],'xticklabel',mods, 'FontSize',20);
set(gca,'XTickLabelRotation',45);

ylim([1 30]);


tstat= [32 22 18 10];

figure; hold on;
for mod = 1:4
   hb=bar(mod, abs(tstat(mod)));
     set(hb,'FaceColor',[0.6 0.6 0.6] ); set(hb,'EdgeColor','none'); set(hb,'BarWidth',0.8);
end
mods = {'Pearson'; 'Linear Regression'; 'Spearman'; 'Not reported'};
set(gca,'xtick',[1:4],'xticklabel',mods, 'FontSize',20);
set(gca,'XTickLabelRotation',45);

ylim([1 35]);

%% Missing info bar plot

tstat= [22 10 9	9 6	5 5];

figure; hold on;
for mod = 1:7
    hb=bar(mod, abs(tstat(mod)));
    set(hb,'EdgeColor','none');
end
mods = {"Temperature at scanning"; "Effect size"; "Statistical design"; "Statistics type"; "Sample size or # ROIs"; "Post-mortem time"; "ROI definition procedure"};
set(gca,'xtick',[1:7],'xticklabel',mods, 'FontSize',20);
set(gca,'XTickLabelRotation',45);

ylim([1 30]);
