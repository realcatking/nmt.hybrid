function [result] = randomMatrix(rangeSize, size, isGPU)
%%%
%
% Initialize random matrix.
% 
% Hieu Pham @ 2014.
% Thang Luong @ 2014, <lmthang@stanford.edu>: added GPU support.
%
%%%
  if exist('isGPU', 'var') && isGPU==1
    result = 2*rangeSize * (rand(size, 'double', 'gpuArray') - 0.5);  
  else
    result = 2*rangeSize * (rand(size) - 0.5);
  end