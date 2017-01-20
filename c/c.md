# C Programming Language Notes

## Header Files
Header files are used to import libraries into the current module.
The syntax to include files varies depending on the type of library being 
imported.

  - Standard libraries are surrounded by less than and greater than symbols 
  (< >). This tells the compiler to search in pre-defined system directories.
  
  - User libraries are surrounded by double quotes (" ").

```C
#include <std_lib.h>
#include "user_lib.h"
```