# Rational Gcd, Case that uses Chinese Remainder.
# reported by Willed de Graaf
gap> x:= X( Rationals,"x" );;
gap> f:= x^133-96*x^127-3000*x^121+347008*x^115+6954540*x^109-
> 390498144*x^103-10087059752*x^97+9198644544*x^91+807579680022*x^85-
> 6238300160224*x^79+23897742669240*x^73-58054582641408*x^67+
> 97528246656332*x^61-117693609901728*x^55+103415475294888*x^49-
> 65875222862272*x^43+29721301380081*x^37-9025704490176*x^31+
> 1657660059648*x^25-139314069504*x^19;;
gap> g:= 133*x^132-12192*x^126-363000*x^120+39905920*x^114+
> 758044860*x^108-40221308832*x^102-978444795944*x^96+837076653504*x^90+
> 68644272801870*x^84-492825712657696*x^78+1744535214854520*x^72-
> 3889657036974336*x^66+5949223046036252*x^60-6473148544595040*x^54+
> 5067358289449512*x^48-2832634583077696*x^42+1099688151062997*x^36-
> 279796839195456*x^30+41441501491200*x^24-2646967320576*x^18;;
gap> Gcd(f,g);
x^114-58*x^108-3513*x^102+113708*x^96+5435185*x^90+14389578*x^84-545845377*x^7\
8+3397296936*x^72-11212759701*x^66+23664901370*x^60-34296838499*x^54+351344756\
28*x^48-25546738973*x^42+12949230518*x^36-4363433955*x^30+880398720*x^24-80621\
568*x^18
