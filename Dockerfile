FROM public.ecr.aws/lambda/nodejs:14-arm64

RUN chown root:root /tmp && \
  chmod 1777 /tmp && \
  yum install -y glibc-langpack-en && \
  yum groupinstall -y development && \
  yum install -y which clang cmake python-devel python3-devel amazon-linux-extras && \
  amazon-linux-extras install -y docker && \
  yum clean all && \
  pip3 install -U pip setuptools wheel --no-cache-dir && \
  pip3 install pipx --no-cache-dir
