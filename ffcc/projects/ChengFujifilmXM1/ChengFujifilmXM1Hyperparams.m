% Copyright 2017 Google Inc.
% 
% Licensed under the Apache License, Version 2.0 (the "License");
% you may not use this file except in compliance with the License.
% You may obtain a copy of the License at
% 
%     https://www.apache.org/licenses/LICENSE-2.0
% 
% Unless required by applicable law or agreed to in writing, software
% distributed under the License is distributed on an "AS IS" BASIS,
% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
% See the License for the specific language governing permissions and
% limitations under the License.

function [params, metrics] = ChengFujifilmXM1Hyperparams(params)
% The hyperparameters for this project, produced using Tune(). See
% ../DefaultHyperparams.m for documentation.
% Tuning started at 2017-06-04, 21:21:22:734.

params.HYPERPARAMS = struct( ...
'VONMISES_MULTIPLIER', 2^-2, ...
'CROSSENT_MULTIPLIER', 2^-1.5, ...
'FILTER_SHIFTS', [2^-71.75, 2^-48.5], ...
'FILTER_MULTIPLIERS', [2^-23.5, 2^-25], ...
'BIAS_SHIFT', 2^-39.5, ...
'BIAS_MULTIPLIER', 2^-25, ...
'VON_MISES_DIAGONAL_EPS', 2^0 ...
);

metrics = struct( ...
'rgb_err', ...
  struct( ...
    'mean', 2.01303, ...
    'mean2', 2.89005, ...
    'mean4', 4.51991, ...
    'median', 1.25975, ...
    'tri', 1.44874, ...
    'b25', 0.37661, ...
    'w25', 4.89445, ...
    'w05', 8.44552, ...
    'max', 11.5428 ...
)    , ...
'uv_err', ...
  struct( ...
    'mean', 2.78544, ...
    'mean2', 3.98948, ...
    'mean4', 6.25962, ...
    'median', 1.77234, ...
    'tri', 2.00394, ...
    'b25', 0.546959, ...
    'w25', 6.65818, ...
    'w05', 11.8109, ...
    'max', 15.3074 ...
)    , ...
'vonmises_nll', ...
  struct( ...
    'mean', 3.20786, ...
    'mean2', 8.62781, ...
    'mean4', 28.1316, ...
    'median', 1.5852, ...
    'tri', 1.85534, ...
    'b25', 0.668234, ...
    'w25', 8.65276, ...
    'w05', 24.206, ...
    'max', 105.075 ...
)    , ...
'uv_bin_bias', [-0.0227333, 0.227631], ...
'final_losses', [57.7157, 61.518, 59.5795], ...
'train_times', [181.525, 219.381, 203.757], ...
'min_feature_time', 0.056379, ...
'min_filter_time', 0.000859, ...
'median_feature_time', 0.296839, ...
'median_filter_time', 0.006039, ...
'opt_traces', ...
  {{[394.064, 214.824, 197.317, 175.856, 166.577, 159.403, 154.576, 149.952, 143.94, 139.457, 136.221, 134.259, 132.426, 131.231, 130.493, 129.905, 129.374], [382.301, 211.079, 195.219, 174.744, 164.818, 158.87, 152.581, 145.611, 140.058, 134.854, 131.41, 128.824, 127.657, 126.892, 126.087, 125.582, 125.086], [376.419, 213.002, 194.838, 170.93, 161.026, 153.5, 149.867, 143.795, 137.494, 132.576, 129.768, 127.853, 126.622, 125.408, 124.666, 124.4, 123.633]; ...
    [70.2784, 68.9812, 68.4769, 66.6794, 66.502, 65.6892, 65.3649, 64.5831, 63.9623, 63.1634, 62.6018, 62.2492, 61.7886, 61.4764, 60.9143, 60.6417, 60.4049, 60.1748, 60.033, 59.7425, 59.5704, 59.4735, 59.2973, 59.17, 59.0726, 59.0024, 58.8726, 58.7719, 58.6922, 58.6375, 58.5318, 58.4463, 58.4124, 58.3961, 58.3755, 58.3536, 58.301, 58.2278, 58.1921, 58.1458, 58.1097, 58.066, 58.0332, 58.0086, 57.9794, 57.9638, 57.9409, 57.9101, 57.8783, 57.8648, 57.8545, 57.8371, 57.8177, 57.7904, 57.7792, 57.7678, 57.7615, 57.7541, 57.7463, 57.7413, 57.7391, 57.7362, 57.7314, 57.7231, 57.7157], [80.0675, 77.4681, 76.4476, 74.7236, 73.1172, 72.8222, 72.3826, 71.9589, 71.4116, 70.5368, 69.6111, 68.5999, 67.9394, 67.6189, 67.0666, 66.6405, 66.2529, 65.6663, 65.3609, 65.1393, 64.9793, 64.8311, 64.6103, 64.3361, 64.0772, 63.9079, 63.7302, 63.4138, 63.1544, 62.9966, 62.881, 62.7696, 62.6613, 62.5959, 62.5362, 62.4868, 62.4067, 62.3122, 62.2588, 62.2191, 62.1785, 62.1219, 62.0426, 61.9922, 61.9517, 61.9215, 61.8758, 61.824, 61.7862, 61.7426, 61.7103, 61.6693, 61.6495, 61.6191, 61.5933, 61.5743, 61.5614, 61.5529, 61.5436, 61.5389, 61.5327, 61.5267, 61.5228, 61.52, 61.518], [75.7614, 73.4769, 72.586, 70.5828, 69.0981, 68.6569, 68.3124, 67.9919, 67.0161, 66.081, 65.6057, 65.1653, 64.9863, 64.6447, 64.3527, 63.8401, 63.3693, 63.0828, 62.6297, 62.4234, 62.1471, 61.9737, 61.6951, 61.4139, 61.1879, 61.0717, 60.9667, 60.8136, 60.6583, 60.5202, 60.4115, 60.3274, 60.3079, 60.2676, 60.234, 60.2084, 60.1742, 60.1264, 60.0837, 60.0398, 59.9827, 59.935, 59.8816, 59.8502, 59.8394, 59.8235, 59.8064, 59.7737, 59.7528, 59.7301, 59.7144, 59.7018, 59.6888, 59.6757, 59.6573, 59.6395, 59.6343, 59.6286, 59.6225, 59.6146, 59.6057, 59.5968, 59.5875, 59.5843, 59.5795]}} ...
);

% Tuning error = 1.466033
% i_pass = 1, i_var = 1, i_mult = 1
% Hyperparams written at 2017-06-04, 21:31:55:271
