from ubuntu
#comments should start in the beginning of file
label maintainer all-images@devops.comm
arg image_variable="local"
env ora_port=1521
env ora_host="localhost"
run mkdir /code
copy sample.sh /code/sample.sh
run chmod +x /code/sample.sh
run echo "Building an image..."
run echo $image_variable
#to start container in /code path
workdir /code
#below line is for bootstrapping
cmd sh /code/sample.sh
