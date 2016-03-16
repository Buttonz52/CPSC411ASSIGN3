all:
	happy -gca ParAssignment.y
	alex -g LexAssignment.x
	ghc --make TestAssignment.hs -o TestAssignment

clean:
	-rm -f *.log *.aux *.hi *.o *.dvi

distclean: clean
	-rm -f DocAssignment.* LexAssignment.* ParAssignment.* LayoutAssignment.* SkelAssignment.* PrintAssignment.* TestAssignment.* AbsAssignment.* TestAssignment ErrM.* SharedString.* ComposOp.* Assignment3.dtd XMLAssignment.* Makefile*
	

