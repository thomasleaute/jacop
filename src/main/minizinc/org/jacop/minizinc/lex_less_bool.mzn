%-----------------------------------------------------------------------------%
% Requires that the array 'x' is strictly lexicographically less than array 'y'.
% Compares them from first to last element, regardless of indices
%-----------------------------------------------------------------------------%

predicate lex_less_bool(array[int] of var bool: x,
                       array[int] of var bool: y) =
%    let { int: lx = min(index_set(x)),
%          int: ux = max(index_set(x)),
%          int: ly = min(index_set(y)),
%          int: uy = max(index_set(y)),
%          int: size = max(ux - lx, uy - ly),
%          array[0..size+1] of var bool: b }
%    in
%    b[0]
%    /\
%    forall(i in 0..size) (
%        b[i] = ( x[lx + i] <= y[ly + i]
%                 /\
%                (x[lx + i] <  y[ly + i] \/ b[i+1]) )
%    )
%    /\
%    b[size + 1] = (ux - lx < uy - ly);

     jacop_lex_less_bool(x, y);

predicate jacop_lex_less_bool(array[int] of var bool: x,
                             array[int] of var bool: y);


predicate lex_lt_bool(array[int] of var bool: x,
                     array[int] of var bool: y) =
          lex_less(x, y);

% predicate jacop_lex_less_bool_reif(array[int] of var bool: x,
%                              array[int] of var bool: y, var bool: b) =
%     abort("Reified lex_less/2 is not supported.");

%-----------------------------------------------------------------------------%
