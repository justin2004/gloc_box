# gloc_box

## what

- an easy to use docker wrapper for [gloc](https://github.com/jvolkening/gloc) a GNU/Linux Overdrive/EMusic Client

## why


## how

0) use a GNU/Linux OS

0) get an odm file (perhaps from your library)

0) run `xhost +`

0) run `docker-compose up`

    - gloc's GUI should appear
        - press open and navigate to /mnt
        - that directory is shared with the host
        - download your files

0) run `xhost -`

## notes/warnings
- files downloaded are owned by root so you'll need sudo power to chown
- the process runs as root inside the container
    - https://docs.docker.com/engine/security/userns-remap/
