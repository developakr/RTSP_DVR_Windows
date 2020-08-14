$dir = Get-Date -Format "yyyy-MM-dd_HH.mm.ss"
mkdir $dir
while($true)
{
$tim = Get-Date -Format "yyyy-MM-dd_HH.mm.ss"
./ffmpeg.exe -stimeout -1 -i rtsp://admin:password@192.168.1.219:554/11 -c copy -an -map 0 -segment_time 01:00:00 -f segment -reset_timestamps 1 ./$dir/$tim"_"%03d.mp4
}