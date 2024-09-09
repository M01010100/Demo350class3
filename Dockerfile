#   A trivial Dockerfile to make a Docker image




#   Use the official small Alpine Linux distribution (the image) 
#   as  base image.

FROM   alpine:latest


#   Install the build tools: GCC and make.

RUN   apk  add  --no-cache   gcc  musl-dev  make
 

#   Make a working directory inside the container.

WORKDIR   /app


#   Copy the everything in the current directory of local Linux
#   into the container.

COPY    .      .


# Compile/link  the C program. 

RUN   gcc   -o   main   main.c


#   Define the command to run a container (executable)
#   from the image.

CMD ["./main"]