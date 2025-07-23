#! /bin/sh

WALLPAPER_DIR="$HOME/Pictures/"

if ! pgrep -x "swww-daemon" > /dev/null; then
   /bin/swww-daemon &
   sleep 1
fi

while true; do
   IMAGE=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)
   /bin/swww img "$IMAGE" --transition-type fade --transition-duration 3
   sleep 500
done
