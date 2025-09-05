FROM docker.io/pytorch/pytorch:2.8.0-cuda12.9-cudnn9-runtime

LABEL forked from https://github.com/comfyanonymous/ComfyUI
LABEL DEVEL=" github:Fluffypal github link:https://github.com/FuffyPal"
LABEL Devel=" Gitlab=FluffyPal Link=https://gitlab.com/FluffyPal"

RUN conda install -y git && \
pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu126 && \
git clone https://github.com/comfyanonymous/ComfyUI.git && \
cd ComfyUI && pip install -r requirements.txt

RUN cd /workspace/ComfyUI/custom_nodes && git clone https://github.com/ltdrdata/ComfyUI-Manager.git

WORKDIR /workspace/ComfyUI

CMD [ "python" , "main.py" , "--listen"]
