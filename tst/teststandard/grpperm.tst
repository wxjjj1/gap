#############################################################################
##
#W  grpperm.tst                 GAP tests                    Alexander Hulpke
##
##
#Y  Copyright (C)  1997
##
##  Exclude from testinstall.g: why?
##
gap> START_TEST("grpperm.tst");
gap> G1 := TrivialSubgroup (Group ((1,2)));;
gap> G2 := SymmetricGroup ([]);;
gap> G3:=Intersection (G1, G2);;
gap> Size(G3);
1
gap> Pcgs(G3);;
gap> g:=Group((1,2,9)(3,4,5)(6,7,8), (1,4,7)(2,5,8)(3,6,9));;
gap> h:=Group((1,2,9)(3,4,5)(6,7,8));;
gap> (g<h)=(AsSSortedList(g)<AsSSortedList(h));
true
gap> g:=Group( (1,2,3), (2,3)(4,5) );;
gap> IsSolvable(g);
true
gap> RepresentativeAction(g,(2,5,3), (2,3,4));
(2,3)(4,5)
gap> g:=Group( ( 9,11,10), ( 2, 3, 4),  (14,17,15), (13,16)(15,17), 
>              ( 8,12)(10,11), ( 5, 7)(10,11), (15,16,17), (10,11,12) );;
gap> Sum(ConjugacyClasses(g),Size)=Size(g);
true
gap> g:= Group( (4,8,12),(2,10)(4,8),(1,10)(2,5)(3,12)(4,7)(6,9)(8,11),
>               (1,7)(3,9)(5,11)(6,10) );;
gap> e:=ElementaryAbelianSeriesLargeSteps(DerivedSeries(g));;
gap> List(e,Size);
[ 2592, 324, 162, 81, 1 ]
gap> ForAll([1..Length(e)-1],i->HasElementaryAbelianFactorGroup(e[i],e[i+1]));
true
gap> group:=
> Subgroup( Group( (  1,  2)(  3,  5)(  4,  7)(  6, 10)(  8, 12)(  9, 13)
> ( 14, 19)( 15, 20)( 16, 22)( 17, 23)( 18, 25)( 24, 31)( 26, 33)( 27, 34)
> ( 28, 36)( 29, 38)( 30, 39)( 35, 45)( 37, 46)( 41, 48)( 42, 50)( 43, 51)
> ( 44, 53)( 47, 57)( 49, 59)( 52, 62)( 54, 64)( 55, 65)( 56, 67)( 58, 70)
> ( 60, 73)( 61, 74)( 63, 77)( 66, 80)( 68, 82)( 69, 75)( 71, 84)( 72, 85)
> ( 76, 88)( 78, 90)( 79, 91)( 81, 94)( 83, 97)( 86,100)( 87,101)( 89,102)
> ( 92,104)( 93,105)( 95,103)( 96,106)( 99,107)(108,114)(109,115)(110,112)
> (113,117)(118,119), (  1,  3,  6)(  2,  4,  8)(  5,  9, 14)(  7, 11, 16)
> ( 10, 15, 21)( 12, 17, 24)( 13, 18, 26)( 19, 27, 35)( 20, 28, 37)( 22, 29, 36)
> ( 23, 30, 40)( 25, 32, 42)( 31, 41, 49)( 33, 43, 52)( 34, 44, 54)( 38, 39, 47)
> ( 45, 55, 66)( 46, 56, 68)( 48, 58, 71)( 50, 60, 65)( 51, 61, 75)( 53, 63, 78)
> ( 57, 69, 73)( 59, 72, 86)( 62, 76, 89)( 64, 79, 92)( 67, 81, 95)( 70, 83, 98)
> ( 74, 87, 77)( 80, 93, 88)( 82, 96, 97)( 84, 99,108)( 85, 90,103)( 91,101,110)
> ( 94,100,109)(102,111,104)(105,112,116)(106,113,118)(114,115,117) ), 
> [ (  1,  6)(  2, 25)(  4, 27, 70, 98, 35, 42)(  5, 44)(  7, 11)(  8, 32, 19)
>     (  9, 50, 33,111, 24, 34)( 12,113, 40, 65, 14, 54)( 13, 78)( 15, 21)
>     ( 17,104, 52, 60, 23,106)( 18, 41, 88, 93, 49, 63)( 20,109)( 22,107, 29)
>     ( 26, 53, 31)( 28, 86, 76, 62, 59,100)( 30,118)( 37, 94, 72)
>     ( 38,110, 99,114, 90, 95)( 39, 87, 92, 71, 73,101)( 43,102)
>     ( 45, 85,115, 46, 58, 64)( 47, 67, 84, 91, 57, 74)( 48, 56, 66, 79, 77, 69
>      )( 51, 75)( 55, 68,117,108, 81,103)( 96, 97)(112,116), 
>   (  1,  8, 65, 89, 94, 10, 37, 72, 43, 32,  6, 14, 19, 83, 54)
>     (  2,  9, 78, 86, 67, 63, 52, 76, 93, 55, 44, 49, 42, 24, 82,118,  4, 13,
>       17, 92, 88, 62,104, 18, 85,109, 41, 34, 35, 16)(  3, 21, 15)
>     (  5, 45, 95,117, 59, 29, 47, 74,110, 50, 30, 69, 64, 91, 22, 20,103, 99,
>       46, 60, 26, 87, 39, 90, 27, 25, 66, 81, 73, 53)(  7, 36, 84,106, 38, 51,
>      33, 79, 98, 96, 56,100, 68, 31,116,112, 80, 71, 28,114, 97, 70, 48,111,
>       75, 77, 23,115,107, 11)( 12,102, 40,119,113)( 57,108,105,101, 58, 61) 
>  ] );;
gap> perf:=RepresentativesPerfectSubgroups(group);;
gap> List(perf,Size);
[ 1, 60, 960, 30720 ]
gap> g:=Group([
> (2,3,5,4)(6,14,21)(7,12,22,9,13,24,10,11,25,8,15,23)(16,32,27)(17,31,
> 29,18,35,26,20,33,30,19,34,28), (1,26,25,2,28,24)(3,30,23,5,29,21)
> (4,27,22)(6,9)(7,8)(11,18,35,13,16,31,12,17,33,15,19,32)(14,20,34) ]);;
gap> h:=Group([ (31,32,33,34,35), (26,27,28,29,30), (21,22,23,24,25),
> (16,17,18,19,20), (11,12,13,14,15), (6,7,8,9,10), (1,2,3,4,5) ] );;
gap> Size(g/h);
2752512
gap> g:=WreathProduct(MathieuGroup(11),Group((1,2)));
<permutation group of size 125452800 with 5 generators>
gap> Length(ConjugacyClassesSubgroups(g));
2048
gap> g:=SemidirectProduct(GL(3,5),GF(5)^3);
<matrix group of size 186000000 with 3 generators>
gap> g:=Image(IsomorphismPermGroup(g));
<permutation group of size 186000000 with 3 generators>
gap> List(MaximalSubgroupClassReps(g),Size);
[ 93000000, 1488000, 6000000, 6000000, 60000, 48000, 46500 ]
gap> g:=Image(IsomorphismPermGroup(GL(2,5)));;
gap> w:=WreathProduct(g,SymmetricGroup(5));;
gap> m:=MaximalSubgroupClassReps(w);;
gap> Collected(List(m,x->Index(w,x)));
[ [ 2, 3 ], [ 5, 1 ], [ 6, 1 ], [ 10, 1 ], [ 16, 1 ], [ 3125, 1 ], 
  [ 7776, 1 ], [ 100000, 1 ] ]
gap> Unbind(m);Unbind(w);Unbind(g);
gap> g := Group(GeneratorsOfGroup(SymmetricGroup(1000)));;
gap> IsNaturalSymmetricGroup(g);
true
gap> Size(g) = Factorial(1000);
true
gap> g := Group(GeneratorsOfGroup(AlternatingGroup(999)));;
gap> IsNaturalSymmetricGroup(g);
false
gap> IsNaturalAlternatingGroup(g);
true
gap> 2*Size(g) = Factorial(999);
true
gap> STOP_TEST( "grpperm.tst", 1799980000);

#############################################################################
##
#E
