
# kauv-ph

This code set accompanies a paper called 
_Hypergraph Type Theory for Specifications-Conformant Code and
Generalized Lambda Calculus_.

To build the code, open the projects in Qt Creator and 
build them in the order listed in "`build-order.txt`".

Create a folder sibling to "`cpp`" called "`data`", and inside 
that a folder called "`scripts`", and inside that a folder called 
"`rz`", and inside that a file called "`t1.rz`" (unless you want to 
edit the paths coded into the "`main.cpp`" files).

Run the R/Z compiler with "`rz-graph-dynamo-runtime-console`" or 
one of the other executables.  The "`t1.rz`" file can have 
sample code like: 
```
,fnd ::: Fn_Doc*;
fnd \== default; 

,kenv ::: KCM_Env*;
kenv \= (envv "KCM_Env*");

fnd -> init kenv;

,test-fn ::: .(int)  $-> extern;

fnd -> read  "test-fn";

```

Other examples of sample code are in the "`samp`" folder.  Multiple 
samples can be executed in sequence with the project/executable called "`rz-multi-console`".

So for example, after confirming that "`t1.rz`" runs properly, copy all scripts in the 
"`samp`" folder, plus "`m1.txt`", to "`../data/scripts/rz`" (relative to the "`cpp`" 
folder where the repo has been cloned); "`m1.txt`" is a list of scripts to run (e.g. for 
tests). 

Testing multiple scripts can also be achieved by including them all in one script with 
"`<#...>`" notation, e.g. script "`t24.txt`" in "`samp`" has the two lines 
"`<#t23>`" and "`<#t25>`".

---
**ECL**

This code may optionally use ECL (Embeddable Common Lisp) and a C++ ECL wrapper called 
cl-cxx.  Both of these are easy to find and build: check 
https://common-lisp.net/project/ecl/ and https://github.com/juanjosegarciaripoll/cl-cxx.

You may need to edit the "`find-ecl-sexpr.pri`" file to point to 
the correct folder(s) where ECL includes and libs are located.

---
**COMMENTS**

This code set will be expanded in conjunction with other 
data sets published in the same volume as the 
"Hypergraphs" chapter.  Future versions of this repo 
will hold longer "Interface Definition Language" 
code describing code libraries built to manage data 
for these other data sets.  Please check back!


