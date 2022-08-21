NF != 3   { print $0, "number fields is not equl to 3" }
$2 < 3.55 { print $0, "rate is below minimum wage" }
$2 > 10   { print $0, "rate exceeds $10 per hour" }
$3 < 0    { print $0, "negative hours worked" }
$3 > 60   { print $0, "too many hours worked" }

$3 > 15 { emp = emp + 1 }
END     { print emp, "employees worked more than 15 hours" }
