<p align="center">
  <img width="280px" src="http://mirrors.jamyido.ml/assets/logo.57d1377f.png" />
</p>

<h1 align="center">JamYido Mirra 前端</h1>
<p align="center">一个 镜像站前端</p>
<p align="center"><b>比较完整，快</b></p>
<p align="center">分类详细明确</p>

<p align="center"><a href="README.md">没有英文</a> | 中文</p>

![GitHub Workflow Status](https://img.shields.io/github/workflow/status/HuYihe2008/JYDmirra/Generate%20Release%20Build?style=for-the-badge)
![Discord](https://img.shields.io/discord/994153609866510336?style=for-the-badge)
![GitHub repo size](https://img.shields.io/github/repo-size/HuYihe2008/JYDmirra?style=for-the-badge)
![GitHub all releases](https://img.shields.io/github/downloads/HuYihe2008/JYDmirra/total?style=for-the-badge)
![GitHub issues](https://img.shields.io/github/issues-raw/HuYihe2008/JYDmirra?style=for-the-badge)
![GitHub](https://img.shields.io/github/license/HuYihe2008/JYDmirra?style=for-the-badge)
![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/huyihe/jydmirra?style=for-the-badge)
![GitHub Workflow Status](https://img.shields.io/github/workflow/status/HuYihe2008/JYDmirra/%E8%87%AA%E5%8A%A8%E5%8C%96%E6%9E%84%E5%BB%BADocker%E9%95%9C%E5%83%8F?label=Docker%20Build&style=for-the-badge)
![GitHub Workflow Status](https://img.shields.io/github/workflow/status/HuYihe2008/JYDmirra/Generate%20Release%20Build?label=GitHub%20Release&style=for-the-badge)
----


# 使用场景：
适用于所有mirra前端，文件下载前端等应用环境

----


# 功能特色：

- Vue3：毫秒级响应
- NaiveUI：精美UI环境
- 归纳整洁
- 脚本清晰

---

# 部署方式：
## 宝塔/Linux部署：
### 1.构建项目
  - 第一步：安装nodejs（如果已安装可以跳过这一步）

    - Ubuntu/debian：
    ```
        sudo apt update
        sudo apt install nodejs npm
    ```
    - CentOS：
    ```
        yum update
        yum install nodejs npm
    ```
        
    - 宝塔：

        1.进入软件商店

        2.选择 PM2管理器 插件进行安装

        3.进入插件点击 Node版本 进行安装

  - 第二步：构建项目
    - 一：进入终端
    - 二：进入项目目录 
        ```
        cd /your/path
        ``` 
    - 二：安装模块：
        ```
        npm install
        ```
            
    - 三：构建项目：
        ```
         npm run build
        ```
            
### 2.创建站点
  - 第一步：点击网站（前提是你已经安装好了nginx）
  - 第二步：创建站点
  - 第三步：网站目录设置为 /你的项目目录/dist
  - 第四步：点击站点→伪静态

伪静态规则：
```
location / {
  try_files $uri $uri/ @router;
  index index.html;
}

location @router {
  rewrite ^.*$ /index.html last;
}
``` 

## Windows server
### 1.构建项目
- 第一步：同上述第一步构建方式相同
- 第二步：
    - 输入命令：
        ```
        npm run serve
        ```
- 第三步：
    - 1.若你使用nginx：
        ```
        location / {
		        root   html;
		        index  index.html index.htm;
		        proxy_pass  http://127.0.0.1:5000
	    }
       ```

      2.若你使用IIS：
      - 创建站点：127.0.0.1 端口号：5000
      - 添加域名：你的域名

- PS：如果您使用了宝塔，可以直接使用上述宝塔创建站点方式使用

## Docker部署

- ### 第一步：
  下载并安装docker（安装步骤不做说明，自行搜索）

- ### 第二部 
  安装并启动完毕后输入如下命令拉取（docker版目前正处于dev阶段测试，不保证稳定性）  
  ```
  docker pull huyihe/jydmirra:latest
  ```
- ### 第三步 创建静态数据目录
  ```
  mkdir -p /your/path/jydmirra
  ```
- ### 第四步 拷贝静态目录数据至服务器静态目录
  ```
  docker run -d \
    -p 5000:5000 \
    --name=jydmirra \
    huyihe/jydmirra:latest
  ```
  ```
  docker cp -a jydmirra:/usr/src/app/dist /your/path/jydmirra/dist
  ```
  ```
  docker rm -f jydmirra
  ```
- ### 第五步 创建容器
  ```
  docker run -d \
    -p 5000:5000 \
    --restart=always \
    --name=jydmirra \
    -v /your/path/jydmirra/dist:/usr/src/app/dist \
    huyihe/jydmirra:latest
  ```
- ### 访问 http://IP:5000 即可使用

---

# 详细设置
将在不久后发布

---

# Github社区讨论
项目已开通专属社区,主要集中开发者计划、BUG反馈、新功能建议等，欢迎积极参与讨论，[点此进入](https://github.com/HuYihe2008/JYDmirra/discussions) 

---

# 项目依赖
- 前端UI：NaiveUI --> https://github.com/TuSimple/naive-ui
- 前端交互程序：vue3 --> https://github.com/vuejs/vue-next

---

# License

本程序使用GPL-2.0协议,二创项目请注明来源

---

# 特别谢鸣
南京大学开源镜像站

