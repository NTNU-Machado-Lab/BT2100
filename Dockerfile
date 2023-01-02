FROM jupyter/scipy-notebook 
COPY --chmod=777 . .
RUN mamba env create -f environment.yml
SHELL ["conda", "run", "-n", "bt2100", "/bin/bash", "-c"]
ENTRYPOINT ["conda", "run", "-n", "bt2100", "jupyter", "lab", "--NotebookApp.token=''"]
