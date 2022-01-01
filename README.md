# iperf3-docker

iperf3 in a container

# Run as Server:
```
docker run -it --rm --name=iperf3-srv -p 5201:5201 iperf3 -s
docker run -d -p 5201:5201 --restart always --name iperf3-srv iperf3 -s
```

# Run as Client (first get server IP address):
```
docker inspect --format "{{ .NetworkSettings.IPAddress }}" iperf3-srv
docker run  -it --rm iperf3 -c <SERVER_IP>
```
