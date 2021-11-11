echo '-----------Git Add---------------';
git add .
printf '\n';
echo '----------Git Status-------------'
git status
printf '\n';
echo '--------Git commit---------------'
git commit -m "$1";
printf '\n';
echo '------------Git push-------------'
git push origin master
