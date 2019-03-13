
% This demo script runs the ECO tracker with deep features on the
% included "Crossing" video.

% Add paths
setup_paths();

% Load video information
base_path = '/media/cjh/datasets/tracking/OTB100/';
% choose name of the VOT sequence
sequence_name = choose_video(base_path);
video_path = [base_path sequence_name];
[seq, ground_truth] = load_video_info(video_path);

% Run ECO
results = testing_CFWCR(seq);