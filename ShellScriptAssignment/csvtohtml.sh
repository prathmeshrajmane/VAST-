awk 'BEGIN{
FS=","
print  "MIME-Version: 1.0"
print  "Content-Type: text/html"
print  "Content-Disposition: inline"
print  "<HTML>""<TABLE border="1"><TH>Heading1</TH><TH>Heading2</TH><TH>Heading3</TH><TH>Heading4</TH><TH>Heading5</TH>" 
}
 {
printf "<TR>"
for(i=1;i<=NF;i++)
printf "<TD>%s</TD>", $i
print "</TR>"
 }
END{
print "</TABLE></BODY></HTML>"
 }
' Sample.csv > Sample.html
