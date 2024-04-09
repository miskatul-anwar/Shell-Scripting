# The variables
name=$1
dir=$(pwd)
echo $opt

# Prompt
printf "(🤖]-> Are you sure ?\n" | lolcat
echo "    1.Yes  2.No"
printf "==>"
read opt
echo "Seleted:: => $opt"
case "$opt" in
"1")
	doas rm -rf $name | lolcat
	echo "Process:: deleted ( $name --> 🪣 )" | lolcat
	echo "Deleted $name from $dir" >>~/LostDir.txt
	;;
"2")
	echo "Files are not deleted, Yay! 😆" | lolcat
	;;
esac
