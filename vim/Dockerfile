FROM registry.access.redhat.com/ubi8

ENV LANG=en_US.UTF-8

RUN dnf install -y --nodocs python3-pip glibc-langpack-en git vim && \
    pip3 install flake8 && \
    mkdir -p /source /root/.vim/autoload /root/.vim/bundle && \
    curl -LSso /root/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim && \
    rm -rf /var/cache/yum /tmp/* /var/tmp/*

RUN cd /root/.vim/bundle && \
    git clone https://github.com/scrooloose/nerdtree.git && \
    git clone https://github.com/Xuyuanp/nerdtree-git-plugin.git && \
    git clone https://github.com/nvie/vim-flake8.git && \
    git clone https://github.com/airblade/vim-gitgutter.git && \
    git clone git://github.com/nathanaelkane/vim-indent-guides.git && \
    find /root/.vim/bundle/ -type d -name ".git" -prune -exec rm -rf {} \;

COPY ./conf/.vimrc /root/.vimrc

WORKDIR /source
