%% Computer Vision Challenge 2019

% Group number:
group_number = 2;

% Group members:
% members = {'Max Mustermann', 'Johannes Daten'};
members = {'Fuqi Guan', 'Fan Wu', 'Hang Yu', 'Yidong Zhao', 'Hanwen Zheng'};

% Email-Address (from Moodle!):
% mail = {'ga99abc@tum.de', 'daten.hannes@tum.de'};
mail = {'fuqi.guan@tum.de', 'fan.wu@tum.de', 'hang.yu@tum.de', ...
    'yidong.zhao@tum.de', 'hanwen.zheng@tum.de' };

%% Add Subfolder
addpath('lib');

%% Start timer here
tic;
%% Disparity Map
% Specify path to scene folder containing img0 img1 and calib
    % test
    scene_path = '/Users/guanfuqi/CODE/CV_CHALLANGE/Materials/playground';
% 
% Calculate disparity map and Euclidean motion
  [D, R, T] = disparity_map(scene_path);

%% Validation
% Specify path to ground truth disparity map
gt_path = '/Users/guanfuqi/CODE/CV_CHALLANGE/Materials/playground';
%
% Load the ground truth
G = readGTFromDir(gt_path);
% 
% Estimate the quality of the calculated disparity map
p = validate_dmap(D, G);

%% Stop timer here
elapsed_time = toc;

%% Print Results
% R, T, p, elapsed_time


%% Display Disparity


