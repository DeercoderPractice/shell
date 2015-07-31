BEGIN { print "<html>\n<head><title>Awk−generated HTML</title></head>\n<body bgcolor=\"#ffffff\">" }
{ print $0 }
END { print "</pre>\n</body>\n</html>" }
