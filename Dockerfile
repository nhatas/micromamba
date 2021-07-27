FROM mambaorg/micromamba

ENV PATH=/opt/conda/bin:$PATH

RUN micromamba install -c conda-forge -c bioconda -n base python=3 \
    htseq \
    samtools

CMD [".", "/opt/conda/bin/entrypoint.sh"]