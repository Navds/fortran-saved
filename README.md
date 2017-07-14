UPDATE:
Thanks to fortran users in google group, a working design appears. 
Only, is there a possibility to autocall the initialization subroutine in the module like a default constructor in C++ ?


------------------
Call for help

I want to be able to call the subroutine amodsub in module amod multiple times ignoring saved variable in the module initialization or subroutine declaration.

Please consider: I cannot make changes to the module, in the real project it's inside a shared library
