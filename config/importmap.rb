# Pin npm packages by running ./bin/importmap

pin "application"
pin "bootstrap", to: "bootstrap.min.js", preload: true # pinの後ろに書いた文字列で, toで指定したファイルを参照する。
pin "popper", to: "popper.js", preload: true # import "popper"を指定するとpopper.jsを参照する