OUTPUT="$(pgrep picom)"

if [ -z "$OUTPUT" ]
then
    picom &
else
    kill $OUTPUT
fi

