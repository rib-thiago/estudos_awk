BEGIN { fs = "\T" }
      { pop[$4] += $3 }
END   {for (name in pop)
           print name, pop[name]   
      }     
