cd /sys/class/leds/
cd $(ls | grep --ignore-case "scrolllock" | awk 'NR==1{print $4}')
doas echo 1 >brightness
exit
cd
