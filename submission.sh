vw -d test.vw -i model --oaa 10 -t -p predictions.vw
echo 'ImageId,Label' >digitsubmission.csv
cat predictions.vw |nl|tr '\t' ','|sed 's/ //g'|sed 's/\..*//g'|sed 's/,10/,0/g' >>digitsubmission.csv
