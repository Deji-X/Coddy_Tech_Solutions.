/*
Passing a few tests is different from exercising the important scenarios.
Track whether minimum, maximum and ordinary values were tested,
and whether competing controls occurred together.
A coverage flag records that a case was observed;
it does not prove that the design responded correctly. Pair coverage with result checks.

Relevant excerpt; surrounding declarations and connections are supplied in the challenge.

    if(value==0)
      seen[0]=1;
    else if(value==15)
      seen[1]=1;
    else 
      seen[2]=1;


The bit mask remembers which categories have appeared without replacing earlier hits.

Combine boundary and control-combination coverage with independent correctness checks.
*/
