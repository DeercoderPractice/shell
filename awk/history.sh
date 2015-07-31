# for using outside *.awk
df -h | awk -f diskrep.awk

# use the FS as it is the field separator, we use it to seperate the file content
# and it also needs to start as BEGIN
awk 'BEGIN { FS=":" } { print $1 "\t" $5 }' /etc/passwd 

### Compare the two comands below
awk '{print $1 $2}' test
awk '{print $1, $2}' test	# the output content is separted if adding comma

## output record separator
awk 'BEGIN { OFS=";" ;	ORS="\n--->\n" } { print $1, $2 }' test

## use awk for generating HTML file
awk -f make-html-from-text.awk test > test.htm

