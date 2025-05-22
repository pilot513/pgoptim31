BEGIN {
  FS=OFS=","
}
FNR>1 {
    d=$1
    gsub(/[^[:digit:]]/,"", d)
    gsub(/[^[:digit:]]/,"", todayDate)
    #printf("todayDate:[%s] d:[%s]\n", todayDate, d)
    if (todayDate > d) print
}
