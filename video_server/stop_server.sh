SERVER_PID=`ps aux | grep "python -m SimpleHTTPServer" | grep -v grep | awk '{print $2}'`
kill -9 $SERVER_PID
