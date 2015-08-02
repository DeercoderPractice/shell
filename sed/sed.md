SED NOTE
====

## Learning Notes

+ `sed '/erors/p' example`, this is used for printing the line that contains the `erors` word, `p` parameters only gives the print option(But it will print the line twice, since it will print all the original line and the searched result)

+ `sed -n '/erors/p' example`, this used the option of -n, which means **silent mode**, in this mode, only print out the searched result, instead of the orignal text content

+ `sed -n '/^This.*errors.$/p' example`, this will match the string that starts with `This`, and ends with `errors`, this command uses regex to match the string pattern, and use the parameter `p` to **print** the text

+ `sed '/erors/d' example`, it will display the lines that doesn't contain the word `erors`, because it is not considered, the option `d` means delete, here it will print the excluded lines

+ `sed '2,4d' example`, it will delete the line 2 to line 4 in example as the output of the command, **NOTE**: Tthe orignal file is not changed during this command, since it will never go back to the file 

+ `sed '3,$d' example`, it will display the  line until the end of the line 3(which means the line 1 and line 2), because it means that it will **delete** the line from 3 to the end($)

+ `sed -n '/a text/,/This/p' example`, it will display the first line that contains the string `a text`, and ends with the line the contains the content `This`.

+ `sed 's/erors/errors/'` will replace the first occurance of `erors` with the word of `errors`, and `sed 's/erors/errors/g'` will replace all the occurance of `erors` with the word `errors`. The `/g` option will give the global influence of search and replace, and the `s` is for `sed` to search and replace the word

+ `sed 's/^/> /' example`, will insert the `> ` before first word of each line

+ `sed 's/$/EOL/' example`, will replace the end character with the 'EOL' word

+ `sed -e 's/erors/errors/g' -e 's/last/final/g' example`, will support multiple search and replace with the `-e` option


+ We can use the `-f` option to specify the `*.sed` file so that multiple commands can be executed and saved in a file



## Summary

+ The **sed** stream editor is a powerful command line tool, which can handle streams of data: it can take input lines from a pipe. This makes it fit for non−interactive use. The **sed** editor uses **vi**−like commands and accepts regular expressions.  The **sed** tool can read commands from the command line or from a script. It is often used to perform find−and−replace actions on lines containing a pattern.
