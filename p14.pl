%%% duplicate the elements of a list

duplicate([],[]) .
duplicate([X|Xs], [X,X|T]) :- duplicate(Xs,T). 
