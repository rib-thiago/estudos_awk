    { nc = nc + length($0) + 1
      nw = nw + NF
    }
END { print NR, "lines", nw, "words", nc, "characters" }

$2 > 3 { n = n + 1; pay = pay + $2 * $3 }
END    { if (n > 0)
	    print n, "employees, total pay is", pay,
	              "average pay is", pay/n
	 else
            print "no employees are paid more than $3/hour"
       }
