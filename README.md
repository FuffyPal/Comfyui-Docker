# Hello

### requirement
* only nvidia version
* NVIDIA Container Toolkit(v1.16.2 or higher)
* docker(or podman) 


#### nvidia container toolkit wiki:https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html

### pull
```sh
docker pull littlefile/comfyui
podman pull littlefile/comfyui
```
### RUN

```sh
$podman run  -v sdmodels:/models --name comfyui -p 8188:8188 -d --device nvidia.com/gpu=all --rm --security-opt=label=disable comfyui:latest
```

```sh
$docker run -d -v Models:/models  --rm --name comfyui -p 8188:8188 --runtime=nvidia --gpus all comfyui:latest
```


if no volume
```sh
$podman run  --name comfyui -p 8188:8188 -d --device nvidia.com/gpu=all --rm --security-opt=label=disable comfyui:latest 
```

```sh
$docker run -d  --rm --name comfyui -p 8188:8188 --runtime=nvidia --gpus all comfyui:latest
```
