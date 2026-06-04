# list just symbolic links:
ls -l . | grep ^l
# do it recursively:
ls -lR . | grep ^l

# suppress "permission denied" errors
find . -type d -name "taxes*" 2>/dev/null | tee findtaxes.out
