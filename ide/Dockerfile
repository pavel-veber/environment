FROM centos:8

ARG DNF_PKGS="python3-pip glibc-langpack-en git vim tmux zsh"
ARG PIP_PKGS="flake8 jedi"
ARG VER_GOLANG="1.13.5"

ENV LANG="en_US.UTF-8" \
    TERM="xterm-256color" \
    PATH="$PATH:/usr/local/go/bin"

RUN dnf install -y --nodocs ${DNF_PKGS} && \
    pip3.6 install --no-cache-dir ${PIP_PKGS} && \
  # oh my zsh
    RUNZSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && \
  # golang
    curl --silent https://dl.google.com/go/go${VER_GOLANG}.linux-amd64.tar.gz -o /tmp/go${VER_GOLANG}.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf /tmp/go${VER_GOLANG}.linux-amd64.tar.gz && \
  # pathogen
    mkdir -p /source /root/.vim/autoload /root/.vim/bundle && \
    curl -LSso /root/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim && \
    dnf clean all && rm -rf /var/cache/yum /tmp/* /var/tmp/*

# vim plugins
RUN cd /root/.vim/bundle && \
    git clone https://github.com/scrooloose/nerdtree.git && \
    git clone https://github.com/Xuyuanp/nerdtree-git-plugin.git && \
    git clone https://github.com/nvie/vim-flake8.git && \
    git clone https://github.com/airblade/vim-gitgutter.git && \
    git clone https://github.com/itchyny/lightline.vim && \
    git clone https://github.com/Yggdroot/indentLine.git && \
    git clone https://github.com/davidhalter/jedi-vim.git --recursive && \
    git clone https://github.com/fatih/vim-go.git && \
    find /root/.vim/bundle/ -type d -name ".git" -prune -exec rm -rf {} \;

COPY ./conf/ /root/

WORKDIR /source

CMD tmux
