# 配置

在项目根目录下面创建一个 `.github/workflows` 目录，  
在该目录中创建一个名为 `deploy.yml` 部署文件

```yml
name: Deploy
on:
  workflow_dispatch: {}
  push:
    branches:
      - main
jobs:
  deploy:
    runs-on: ubuntu-latest
    permissions:
      pages: write
      id-token: write
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}
    steps:
      - uses: actions/checkout@v3
        with:
          fetch-depth: 0

      - uses: actions/setup-node@v3
        with:
          node-version: 20
          cache: npm

      - run: npm ci
      - name: Build
        run: npm run docs:build

      - name: Move built files to root directory and clean up
        run: |
          mv ./docs/.vitepress/dist/* ./
          rm -rf ./type-doc
          mv ./docs/type-doc ./
          rm -rf ./node_modules
          rm -rf ./docs

      - uses: actions/configure-pages@v2
      - uses: actions/upload-pages-artifact@v1
        with:
          path: ./

      - name: Deploy
        id: deployment
        uses: actions/deploy-pages@v1
```

- name：工作流的名称

- on：定义触发工作流的事件，在上面的例子中，工作流会在以下情况触发：
  - 当你手动触发时
  - 当你推送代码到 main 分支的时候

- jobs：定义要运行的一组任务
  - deploy：表示要运行一个名为 deploy 的任务
    - runs-on：定义你的任务是在哪种类型的机器上面运行
    - permissions：工作流需要的权限
    - environment：运行工作流的环境

    - steps：定义任务中要执行的一系列任务
      - 第一步：使用 *actions/checkout@v3* 操作检出您的仓库。
      - 第二步：使用 *actions/setup-node@v3* 操作设置指定版本的 *Node.js* 环境。这里是使用 *Node.js* 16 和 *npm* 缓存。
      - 第三步：运行 *npm ci* 命令以安装项目依赖项。
      - 第四步：运行名为 "Build" 的步骤，执行 `npm run docs:build` 命令以构建文档。
      - 第五步：使用 *actions/configure-pages@v2* 操作配置 GitHub Pages。
      - 第六步：使用 *actions/upload-pages-artifact@v1* 操作将构建产物（位于 `docs/.vitepress/dist` 目录下）上传为工作流制品。
      - 第七步：运行名为 "Deploy" 的步骤，使用 *actions/deploy-pages@v1* 操作部署文档到 GitHub Pages。并使用 *id* 参数将此步骤的 *ID* 设置为 "deployment"，以便在后续步骤中引用。

> 任务流文件准备好了之后，就可以开始准备推送了。


# 创建仓库

接下来我们需要来到 github 官网，创建一个名为 `username.github.io` 的仓库，注意将 *username* 替换为你 github 账号的 *username*

仓库创建好之后，通过如下的命令将我们本地的仓库推送到远端仓库：

```bash
git remote add origin url
git branch -M main
git push -u origin main
```

推送到远端仓库之后，github actions 就会根据我们的工作流配置文件自动的执行任务流，你可以在 actions 面板看到对应的执行进度

点击【pages build and deployment】，里面就可以看到部署的网站链接

---

注意有时候你可能会面临这么一种情况，已经提交了新的任务流文件，在 Actions 面板，看到所有的任务也已经运行完毕了，但是仍然是 404

- 清除一下浏览器的缓存
- 重新触发工作流