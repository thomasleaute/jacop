%-----------------------------------------------------------------------------%
% Constrains the array of objects 'x' to be all different.
%-----------------------------------------------------------------------------%
predicate all_distinct(array[int] of var int: x) =
	  jacop_alldistinct(x);

%    = forall(i,j in index_set(x) where i < j) ( x[i] != x[j] );


predicate jacop_alldistinct(array[int] of var int: x);

% predicate jacop_alldistinct_reif(array[int] of var int: x, var bool: n) =
%     abort("Reified all_distinct/1 is not supported.");
