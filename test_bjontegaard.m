% Copyright (c) 2013, Serge Matyunin
% All rights reserved.
% 
% Redistribution and use in source and binary forms, with or without
% modification, are permitted provided that the following conditions are
% met:
% 
%     * Redistributions of source code must retain the above copyright
%       notice, this list of conditions and the following disclaimer.
%     * Redistributions in binary form must reproduce the above copyright
%       notice, this list of conditions and the following disclaimer in
%       the documentation and/or other materials provided with the distribution
% 
% THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
% AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
% IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
% ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
% LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
% CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
% SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
% INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
% CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
% ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
% POSSIBILITY OF SUCH DAMAGE.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% data from 
% VCEG-M34. http://wftp3.itu.int/av-arch/video-site/0104_Aus/VCEG-M34.xls
% b_... - bitrate
% p_... - PSNR

b_TML = [
    32.302
17.549
10.427
6.241
];

p_TML = [
36.697
33.97
31.123
28.235
];


b_4bl = [
    33.305
17.871
10.562
6.333
];

p_4bl = [
    36.668
33.955
31.107
28.213
];

b_2bl = [
    34.162
18.358
10.91
6.685
];

p_2bl = [
    36.662
33.921
31.063
28.165
];

b_7b = [
32.447
17.451
10.387
6.254
];

p_7b = [
    36.711
33.98
31.115
28.268
];


b_1div3_funn = [
33.657
18.191
10.638
6.478
];

p_1div3_funn = [
36.669
33.93
31.055
28.198
];

b_run = [
32.07
17.184
9.967
5.739
];

p_run = [
36.697
33.97
31.123
28.235
];

%%%%%%%%%%%%%%%%%%%%%%%%%%%

b_n_TML = [
    57.687
36.029
22.139
13.344
];

p_n_TML = [
    37.579
34.493
31.402
28.428
];

b_n_4bl = [
    59.741
36.955
22.611
13.485
];

p_n_4bl = [
    37.489
34.413
31.375
28.411
];

b_n_2bl=[
60.797
37.938
23.171
14.096
];


p_n_2bl = [
37.495
34.434
31.292
28.362
];

b_n_7bl = [
57.361
35.902
22.009
13.314
];

p_n_7bl = [
37.59
34.504
31.41
28.442
];

b_n_1div3_funn = [
59.314
36.842
22.26
13.228
];

p_n_1div3_funn = [
37.536
34.451
31.37
28.389
];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% mode: 'dsnr' or 'rate'

mode = 'dsnr';

% compare output to overall table in VCEG-M34.
fprintf( 'sequence Container\n' );
fprintf( 'version 1: 4bl = %f\n', bjontegaard( b_TML, p_TML, b_4bl, p_4bl, mode ) );
fprintf( 'version 2: 4bl = %f\n', bjontegaard2( b_TML, p_TML, b_4bl, p_4bl, mode ) );

fprintf( 'version 1: 2bl = %f\n', bjontegaard( b_TML, p_TML, b_2bl, p_2bl, mode ) );
fprintf( 'version 2: 2bl = %f\n', bjontegaard2( b_TML, p_TML, b_2bl, p_2bl, mode ) );

fprintf( 'version 1: 7bl = %f\n', bjontegaard( b_TML, p_TML, b_7b, p_7b, mode ) );
fprintf( 'version 2: 7bl = %f\n', bjontegaard2( b_TML, p_TML, b_7b, p_7b, mode ) );

fprintf( 'version 1: 1/3 = %f\n', bjontegaard( b_TML, p_TML, b_1div3_funn, p_1div3_funn, mode ) );
fprintf( 'version 2: 1/3 = %f\n', bjontegaard2( b_TML, p_TML, b_1div3_funn, p_1div3_funn, mode ) );

fprintf( 'version 1: run = %f\n', bjontegaard( b_TML, p_TML, b_run, p_run, mode ) );
fprintf( 'version 2: run = %f\n', bjontegaard2( b_TML, p_TML, b_run, p_run, mode ) );

fprintf( '\nsequence News\n' );
fprintf( 'version 1: 4bl = %f\n', bjontegaard( b_n_TML, p_n_TML, b_n_4bl, p_n_4bl, mode ) );
fprintf( 'version 2: 4bl = %f\n', bjontegaard2( b_n_TML, p_n_TML, b_n_4bl, p_n_4bl, mode ) );
fprintf( 'version 1: 2bl = %f\n', bjontegaard( b_n_TML, p_n_TML, b_n_2bl, p_n_2bl, mode ) );
fprintf( 'version 2: 2bl = %f\n', bjontegaard2( b_n_TML, p_n_TML, b_n_2bl, p_n_2bl, mode ) );

fprintf( 'version 1: 7bl = %f\n', bjontegaard( b_n_TML, p_n_TML, b_n_7bl, p_n_7bl, mode ) );
fprintf( 'version 2: 7bl = %f\n', bjontegaard2( b_n_TML, p_n_TML, b_n_7bl, p_n_7bl, mode ) );

fprintf( 'version 1: 1/3 = %f\n', bjontegaard( b_n_TML, p_n_TML, b_n_1div3_funn, p_n_1div3_funn, mode ) );
fprintf( 'version 2: 1/3 = %f\n', bjontegaard2( b_n_TML, p_n_TML, b_n_1div3_funn, p_n_1div3_funn, mode ) );
