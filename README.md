# libcamera in docker

It was quite a struggle to get this to work. I've left traces of all the 
various things I either expected or found others documenting (all the 
devices in the docker compose doc, for example), but I left it in a state 
that was working at the time of this writing. I'm leaving it in a state 
where it was working for me on a Raspberry Pi 4.

To use:
1. `docker compose up -d`
1. `docker exec libcam bash`
1. `libcamera-hello`

have fun :)