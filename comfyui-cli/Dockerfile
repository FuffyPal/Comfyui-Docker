FROM python:3.11.11-slim

WORKDIR /workspace

RUN apt update && apt install -y git && apt clean
RUN pip install comfy-cli
RUN cd /workspace && yes | comfy --here install --nvidia --fast-deps --manager-url https://github.com/ltdrdata/ComfyUI-Manager.git 

CMD ["python" , "ComfyUI/main.py" , "--listen"]
