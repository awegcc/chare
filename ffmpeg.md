## Video
- Thumbnail
`ffmpeg -hide_banner -ss 00:01:50.420 -i in.mp4 -s 640x480 -vframes 1 out.jpg`

ffmpeg -hide_banner -ss 01:02:35 -i mm-190826.mp4 -vframes 1 out2.jpg


- trim and crop(crop=width:height:x:y)
`ffmpeg -ss 00:01:51 -t 04:57:15 -accurate_seek -i 190815.mp4 -codec copy -avoid_negative_ts 1 out.mp4`

ffmpeg -hwaccel cuda -ss 00:01:51 -t 04:57:15 -i 190815.mp4 -vf crop=410:710:438:10 -c:v h264_nvenc znm-02.mp4

ffmpeg -hwaccel cuda -ss 00:01:51 -t 01:00:40 -i 190826.mp4 -vf crop=410:720:435:00 -c:v h264_nvenc mmm-02.mp4

- watermark(delogo=x:y:w:h)
ffplay -i test.flv -vf delogo=x=806:y=20:w=70:h=80:show=1
ffmpeg -i test.flv -vf delogo=x=806:y=20:w=70:h=80 output.flv


## Image


