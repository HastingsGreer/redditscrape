for video in $(ls data)
do
    if [ -f "data256/$video" ]
    then
        echo "already_done"
    else
ffmpeg-git-20210920-amd64-static/ffmpeg  -i data/$video \
    -vf scale=w=256:h=256:force_original_aspect_ratio=increase:force_divisible_by=2,crop=256:256 \
      data256/$video

    fi
done
