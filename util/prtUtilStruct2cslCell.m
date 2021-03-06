function cslCell = prtUtilStruct2cslCell(S)
% xxx Need Help xxx
% prtUtilStruct2cslCell converts a structure to a comma separated list cell
%
% Inputs:
%   S - a structure
%
% Outputs:
%   cslCell - A comma separated list cell
%
% Examples:
%   S.firstField = 'firstCellContents';
%   S.secondField = rand(5);
%   prtUtilStruct2cslCell(S)
%
% Author: Kenneth D. Morton Jr.
% Date Created: 05-Aug-2008

% Copyright (c) 2013 New Folder Consulting
%
% Permission is hereby granted, free of charge, to any person obtaining a
% copy of this software and associated documentation files (the
% "Software"), to deal in the Software without restriction, including
% without limitation the rights to use, copy, modify, merge, publish,
% distribute, sublicense, and/or sell copies of the Software, and to permit
% persons to whom the Software is furnished to do so, subject to the
% following conditions:
%
% The above copyright notice and this permission notice shall be included
% in all copies or substantial portions of the Software.
%
% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
% OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
% MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN
% NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
% DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
% OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE
% USE OR OTHER DEALINGS IN THE SOFTWARE.



fnames = fieldnames(S);
cslCell = cell(1,2*length(fnames));
cslCell(1:2:(2*length(fnames)-1)) = fnames;
cslCell(2:2:2*length(fnames)) = struct2cell(S);

end
