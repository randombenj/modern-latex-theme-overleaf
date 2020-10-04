# modern-latex-theme-overleaf

automatic overleaf setup which includes the modern latex theme

```sh
# start the setup
docker-compose up -d
```

You also need to add a `latexmkrc` file to your project with the following content:

```
# use -shell-escape for syntax highlight
$lualatex = 'lualatex -interaction=nonstopmode -shell-escape';

# build the glossaries
add_cus_dep('glo', 'gls', 0, 'makeglo2gls');
sub makeglo2gls {
    system("makeindex -s '$_[0]'.ist -t '$_[0]'.glg -o '$_[0]'.gls '$_[0]'.glo");
}
```
