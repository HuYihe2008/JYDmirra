# NJU Mirror Configs

> Configurations for [NJU Open Source Software Mirror](https://mirrors.nju.edu.cn/).

## How to Contribute

### Mirror Documentations

1. Fork this repository.
2. Place your new mirror documentation by putting your `*.md` file in `/documentations/`. A sample file is
   as follows:
   > Filename: `2021-13-37-flatter.md`  
   > Content:
   > ```markdown
   > ## Flatter 镜像安装帮助
   > 
   > 阿巴阿巴
   > 
   > ### 歪比巴卜
   > 
   > ...
   > ```
3. Add your new documentation and its route to `index.json`.
4. Create a merge/pull request to let us know.

You can preview this project on [https://iori2333.github.io/Mira](https://iori2333.github.io/Mira/).

### Mirror News

1. Fork this repository
2. Place the `*.md` news document in `/news/`. The filename of your document must match `<yyyy>-<mm>-<dd>-<title>.md`, for example, `2021-13-37-SomeNews.md`.
3. Run `scripts/gennews/gennews.py` under `/news/`. This will generate a new `index.json`.
4. Create a merge/pull request to let us know.
