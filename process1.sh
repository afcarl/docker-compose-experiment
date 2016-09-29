#if [ !`ps -aux | grep process2.sh` ]; then
while ! ps -aux | grep "[p]rocess2.sh" ;do
  echo "STARTING MR 2"
  bash -c "exec -a process2 ./process2.sh" &
  echo $!
done
echo "WELL NO SUCH TO"
