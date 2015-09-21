This sample project demonstrates a memory issue with Apple iOS mediaserverd in iOS 8.4.1 and iOS 9.0.

When streaming the included video from a server it is observed that mediaserverd will consume a significant amount of memory that eventually results in memory warnings and crashes.  What is interesting is that when you profile the app you will see this app using only a few MB.  Yet you'll still get memory warnings and crashes.  The crash logs will be for mediaserverd and not this app.

On an iPad3 running iOS 8.4.1 playing the video resulted in erratic memory behavior.  Each time the video was played
it was observed that mediaserverd would consume up to 250MB.  Playing the video twice usually resulted in crashing.

On an iPad Air 2 running iOS 9.0 playing the video still resulted in memory consumption but it was not as exponential as it was
on iOS 8.4.1. Each time the video was played it consumed around 70MB.

Included in this project are two scripts to start/stop a python server which serves up the video over http.
You will need to start the server using the video_server/start_server.sh script.
After testing you will need to stop the server using video_server/stop_server.sh.

Exact client steps to reproduce

1. Hard reset the device/simulator (device: hold down home and power, simulator: reset contents and settings)
1. Open App
1. Hit "Play Video"
1. Let video play for about 10 seconds
1. Hit "Done" button
1. Repeat steps 2-4.

The memory used by **mediaserverd** can be viewed in Instruments' **Activity Monitor** template.
