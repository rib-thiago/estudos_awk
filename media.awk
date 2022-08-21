    { pay = pay + $2 * $3 }
END { print NR, "employees" 
      print "total pay is", pay
      print "avarage pay is", pay/NR
    }

$2 > maxrate { maxrate = $2; maxemp = $1}
END { print "highest hourly rate:", maxrate, "for", maxemp }
