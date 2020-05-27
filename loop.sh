#~/bin/bash
loopCount=1

while :; do
  case $1 in
    -l|--loop)
      if [ "$2" ]; then
        loopCount=$2
        shift
      else
        echo 'Usage: -l|--loop <count> (1 is default; 0 is infinity)'
       exit 1
      fi
      ;;
      *)
      break
      ;;
  esac
  shift
done

if [ "$loopCount" -lt 1 ]; then
  loopCount=-1
fi
echo "$loopCount"
while [ "$loopCount" -ne 0 ];
do
  echo "test $loopCount"
  loopCount=$(( $loopCount - 1 ));
done

