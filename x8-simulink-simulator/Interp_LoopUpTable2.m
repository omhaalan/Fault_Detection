function [y] = Interp_LoopUpTable2(lookup,x1,x2)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

obj = griddedInterpolant({lookup.Breakpoints(1).Value,lookup.Breakpoints(2).Value},lookup.Table.Value);
y = obj(x1,x2);
end

