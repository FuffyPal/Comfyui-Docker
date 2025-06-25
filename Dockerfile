FROM docker.io/pytorch/pytorch:2.7.1-cuda12.8-cudnn9-runtime

LABEL forked from https://github.com/comfyanonymous/ComfyUI
LABEL DEVEL=" github:little-file github link:https://github.com/little-file"

RUN conda install -y git && \
pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu126 && \
git clone https://github.com/comfyanonymous/ComfyUI.git && \
cd ComfyUI && pip install -r requirements.txt

RUN cd /workspace/ComfyUI/custom_nodes && git clone https://github.com/ltdrdata/ComfyUI-Manager.git

WORKDIR /workspace/ComfyUI

CMD [ "python" , "main.py" , "--listen"]
