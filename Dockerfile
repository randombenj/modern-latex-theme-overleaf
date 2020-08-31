FROM sharelatex/sharelatex
RUN apt update &&  apt install --yes texlive-base \
  texlive-bibtex-extra \
  texlive-binaries \
  texlive-extra-utils \
  texlive-font-utils \
  texlive-fonts-recommended \
  texlive-formats-extra \
  texlive-lang-english \
  texlive-lang-european \
  texlive-lang-german \
  texlive-latex-base \
  texlive-latex-extra \
  texlive-latex-recommended \
  texlive-luatex \
  texlive-pictures \
  texlive-generic-extra \
  texlive-fonts-extra \
  python-pygments && rm -rf /var/lib/apt/lists/*


ADD https://raw.githubusercontent.com/randombenj/modern-latex-theme/master/modern.cls /latex-theme/
