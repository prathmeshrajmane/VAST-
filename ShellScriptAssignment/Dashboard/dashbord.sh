

choice=$1

  

ip=`hostname -I | awk '{print $1}'`

x1=`cat Demo.txt | awk '{print $1}'`
x2=`cat Demo.txt | awk '{print $2"|"$3"|"$4}'`
x3=`cat Demo.txt | awk '{print $5}'`
x4=`cat Demo.txt | awk '{print $6}'`



z1=`cat Prod.txt | awk '{print $1}'`
z2=`cat Prod.txt | awk '{print $2"|"$3"|"$4}'`
z3=`cat Prod.txt | awk '{print $5}'`
z4=`cat Prod.txt | awk '{print $6}'`

y1=`cat Dev.txt | awk '{print $1}'`
y2=`cat Dev.txt | awk '{print $2"|"$3"|"$4}'`
y3=`cat Dev.txt | awk '{print $5}'`
y4=`cat Dev.txt | awk '{print $6}'`

o1=`cat Qa.txt | awk '{print $1}'`
o2=`cat Qa.txt | awk '{print $2"|"$3"|"$4}'`
o3=`cat Qa.txt | awk '{print $5}'`
o4=`cat Qa.txt | awk '{print $6}'`

p1=`cat Uat.txt | awk '{print $1}'`
p2=`cat Uat.txt | awk '{print $2"|"$3"|"$4}'`
p3=`cat Uat.txt | awk '{print $5}'`
p4=`cat Uat.txt | awk '{print $6}'`

#if curl -s --head  --request GET http://192.168.1.102:1000/Demo.html | grep "200 OK" > /dev/null; then 
 #  x11="UP"
#else
 #  x11="Down"
#fi

#x11=$`curl -s --head  --request GET http://192.168.1.102:1000/Demo.html | grep "200 OK"`

Tim=$`curl http://admin:112096f0a6d663d6b34389c4f04504dae2@$ip:9095/job/DASHBOARD-SAMPLE/lastBuild/buildTimestamp`
#Tim=$`wget -qO- http://admin:112096f0a6d663d6b34389c4f04504dae2@192.168.1.102:9095/job/spock-lizard-docker-html/lastSuccessfulBuild/buildNumber`
Build=$`curl http://admin:112096f0a6d663d6b34389c4f04504dae2@$ip:9095/job/DASHBOARD-SAMPLE/lastBuild/buildNumber`

#results=$`curl -silent http://admin:112096f0a6d663d6b34389c4f04504dae2@192.168.1.102:9095/job/DASHBOARD-SAMPLE/lastBuild/api/xml?depth=0 | grep -oP '(?<=result).\w*' |  awk '{print $1}' |  grep -oE "^.{2,30}\w*" | sed '2d' | sed -e 's/>//g'`

JobName=$`curl -silent http://admin:112096f0a6d663d6b34389c4f04504dae2@$ip:9095/job/DASHBOARD-SAMPLE/lastBuild/api/xml?depth=0 | grep -oP '(?<=fullDisplayName).*' | awk '{print $1}' | sed -e 's/>//g'`


#Result=$`curl -silent http://admin:112096f0a6d663d6b34389c4f04504dae2@192.168.1.102:9095/job/DASHBOARD-SAMPLE/lastBuild/api/xml?depth=0 | grep -oP '(?<=result).\w*'`

Tags=$`curl -silent http://admin:112096f0a6d663d6b34389c4f04504dae2@$ip:9095/job/DASHBOARD-SAMPLE/lastSuccessfulBuild/logText/progressiveHtml?start=0 | grep -aoP '(?<=-fa).* ' | awk '{print $1}' |  sed '2d'`


if [ "$choice" == "Demo" ]; 
then


echo " ${Build} ${Tim} ${JobName} ${Tags} " | tr -d "$" > Demo.txt 

x1=`cat Demo.txt | awk '{print $1}'`
x2=`cat Demo.txt | awk '{print $2"|"$3"|"$4}'`
x3=`cat Demo.txt | awk '{print $5}'`
x4=`cat Demo.txt | awk '{print $6}'`




elif [ "$choice" == "Dev" ];
then
echo "${Build} ${Tim} ${JobName} ${Tags}" | tr -d "$" > Dev.txt

y1=`cat Dev.txt | awk '{print $1}'`
y2=`cat Dev.txt | awk '{print $2"|"$3"|"$4}'`
y3=`cat Dev.txt | awk '{print $5}'`
y4=`cat Dev.txt | awk '{print $6}'`



elif [ "$choice" == "Prod" ];
then

echo "${Build} ${Tim} ${JobName} ${Tags} " | tr -d "$" > Prod.txt

z1=`cat Prod.txt | awk '{print $1}'`
z2=`cat Prod.txt | awk '{print $2"|"$3"|"$4}'`
z3=`cat Prod.txt | awk '{print $5}'`
z4=`cat Prod.txt | awk '{print $6}'`



elif [ "$choice" == "QA" ];
then
echo "${Build} ${Tim} ${JobName} ${Tags} " | tr -d "$" > Qa.txt
o1=`cat Qa.txt | awk '{print $1}'`
o2=`cat Qa.txt | awk '{print $2"|"$3"|"$4}'`
o3=`cat Qa.txt | awk '{print $5}'`
o4=`cat Qa.txt | awk '{print $6}'`


else [ "$choice" == "Uat" ];

echo "${Build} ${Tim} ${JobName} ${Tags} " | tr -d "$" > Uat.txt

p1=`cat Uat.txt | awk '{print $1}'`
p2=`cat Uat.txt | awk '{print $2"|"$3"|"$4}'`
p3=`cat Uat.txt | awk '{print $5}'`
p4=`cat Uat.txt | awk '{print $6}'`

fi



cat <<- _EOF_
<html><head></head><body>
<style>table.GeneratedTable {
  width: 100%;
  background-color: #ffffff;
  border-collapse: collapse;
  border-width: 2px;
  border-color: #000000;
  border-style: solid;
  color: #000000;
}

table.GeneratedTable td, table.GeneratedTable th {
  border-width: 2px;
  border-color: #000000;
  border-style: solid;
  padding: 3px;
}

table.GeneratedTable thead {
  background-color: #ffffff;
}
</style>
<table class=GeneratedTable>
<thead>
   	 
<tr><td>Enviornment</td><td>BUILD ID</td><td>Time Stamp</td><td>Job Name</td><td>Current Tag</td></tr>

  </thead>

  <tbody>
<tr><td>DEMO</td><td>${x1}</td><td>${x2}</td><td>${x3}</td><td>${x4}</td></tr>
<tr><td>Dev</td><td>${y1}</td><td>${y2}</td><td>${y3}</td><td>${y4}</td></tr>
<tr><td>Prod</td><td>${z1}</td><td>${z2}</td><td>${z3}</td><td>${z4}</td></tr>
<tr><td>Qa</td><td>${o1}</td><td>${o2}</td><td>${o3}</td><td>${o4}</td></tr>
<tr><td>Uat</td><td>${p1}</td><td>${p2}</td><td>${p3}</td><td>${p4}</td></tr>
</body></html>
_EOF_
