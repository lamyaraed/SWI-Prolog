processes([p1,p2,p3,p4]).

available_resources([[r1, 0], [r2, 0]]).

allocated(p1, [r2]).
allocated(p2, [r1]).
allocated(p3, [r1]).
allocated(p4, [r2]).

requested(p1, [r1]).
requested(p3, [r2]).