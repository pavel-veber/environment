FROM registry.access.redhat.com/ubi8

ENV LANG=en_US.UTF-8

RUN dnf install -y --nodocs glibc-langpack-en git vim && \
    mkdir -p /source /root/.vim/autoload /root/.vim/bundle && \
    curl -LSso /root/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim && \
    rm -rf /var/cache/yum /tmp/* /var/tmp/*

RUN git clone https://github.com/scrooloose/nerdtree.git /root/.vim/bundle/nerdtree && \
    git clone https://github.com/Xuyuanp/nerdtree-git-plugin.git /root/.vim/bundle/nerdtree-git-plugin && \
    git clone https://github.com/nvie/vim-flake8.git /root/.vim/bundle/vim-flake8 && \
    git clone https://github.com/airblade/vim-gitgutter.git /root/.vim/bundle/vim-gitgutter && \
    find /root/.vim/bundle/ -type d -name ".git" -prune -exec rm -rf {} \;

COPY ./conf/.vimrc /root/.vimrc

WORKDIR /source
