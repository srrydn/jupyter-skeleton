FROM jupyter/scipy-notebook:3b1f4f5e6cc1

EXPOSE 8888

WORKDIR /mnt

ARG gittoken

RUN echo "[url \"https://"$gittoken":@github.com/\"]\n\tinsteadOf = https://github.com/" >> /home/jovyan/.gitconfig

COPY requirements* ./

RUN pip install --trusted-host pypi.org --trusted-host pypi.python.org --trusted-host files.pythonhosted.org -r requirements.txt

COPY jupyter_notebook_config.py /etc/jupyter/

COPY . .

WORKDIR /mnt/notebooks

CMD jupyter notebook