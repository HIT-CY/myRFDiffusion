FROM python:3.8.0
WORKDIR ./RF_Diffusion_fmcw
ADD . .
RUN pip install -r requirements.txt
RUN pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118
CMD ["python3", "./RF_Diffusion_fmcw/inference.py", "--task_id", "1"]

