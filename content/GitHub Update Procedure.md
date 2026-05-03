
## Purpose

This note documents the full procedure for publishing the Obsidian vault to GitHub and deploying it as a Quartz website using GitHub Pages.


# 1. Repositories

## Vault repository

This repo stores the actual Obsidian vault content.

Local folder:

```text
C:\Users\baozh\OneDrive\文档\Knowledge Base\DCA Theory
```

GitHub repository:

```text
https://github.com/paulbliu/dca-vault
```

## Quartz site repository

This repo stores the Quartz website engine and deployment workflow.

Local folder:

```text
C:\Users\baozh\Documents\dca-theory-site
```

GitHub repository:

```text
https://github.com/paulbliu/paulbliu.github.io
```

Live website:

```text
https://paulbliu.github.io
```

---

# 2. One-Time Setup: Push Vault to GitHub

Run this inside the Obsidian vault folder:

```bat
cd "C:\Users\baozh\OneDrive\文档\Knowledge Base\DCA Theory"
git init
git add .
git commit -m "initial vault commit"
git branch -M main
git remote add origin https://github.com/paulbliu/dca-vault.git
git push -u origin main
```

If the remote already exists, use:

```bat
git remote set-url origin https://github.com/paulbliu/dca-vault.git
git push -u origin main
```

---

# 3. One-Time Setup: Push Quartz Site to GitHub

Run this inside the Quartz site folder:

```bat
cd "C:\Users\baozh\Documents\dca-theory-site"
git init
git add .
git commit -m "Initial DCA Theory site"
git branch -M main
git remote add origin https://github.com/paulbliu/paulbliu.github.io.git
git push -u origin main
```

If the remote already exists, use:

```bat
git remote set-url origin https://github.com/paulbliu/paulbliu.github.io.git
git push -u origin main
```

---

# 4. Git Identity Setup

If Git shows:

```text
Author identity unknown
```

Run:

```bat
git config --global user.name "Paul Liu"
git config --global user.email "paul_b_liu@yahoo.com"
```

---

# 5. Personal Access Token

GitHub does not allow password authentication for Git pushes.

Create a GitHub Personal Access Token with:

```text
repo
workflow
```

Use the token as the password when Git asks:

```text
Username: paulbliu
Password: paste token here
```

---

# 6. Quartz Local Preview

Run:

```bat
cd "C:\Users\baozh\Documents\dca-theory-site"
npx quartz build --serve
```

Open:

```text
http://localhost:8080
```

Stop the local server:

```text
Ctrl + C
```

---

# 7. Quartz Config Fix

In:

```text
C:\Users\baozh\Documents\dca-theory-site\quartz.config.ts
```

Make sure RSS is disabled:

```ts
Plugin.ContentIndex({
  enableSiteMap: true,
  enableRSS: false,
}),
```

This prevents GitHub Pages from serving `index.xml` instead of `index.html`.

---

# 8. Site Deploy Workflow

File:

```text
C:\Users\baozh\Documents\dca-theory-site\.github\workflows\deploy.yml
```

Content:

```yaml
name: Deploy Quartz site to GitHub Pages

on:
  push:
    branches:
      - main
  repository_dispatch:
    types:
      - vault-updated
  workflow_dispatch:

permissions:
  contents: read
  pages: write
  id-token: write

concurrency:
  group: pages
  cancel-in-progress: false

jobs:
  build:
    runs-on: ubuntu-22.04
    steps:
      - name: Checkout site repo
        uses: actions/checkout@v4

      - name: Checkout vault
        uses: actions/checkout@v4
        with:
          repository: paulbliu/dca-vault
          path: vault

      - name: Copy vault to content
        run: |
          rm -rf content
          mkdir content
          cp -r vault/* content/
          rm -rf content/.obsidian content/Templates content/private

      - uses: actions/setup-node@v4
        with:
          node-version: 22

      - name: Install dependencies
        run: npm ci

      - name: Build Quartz
        run: npx quartz build

      - name: Upload artifact
        uses: actions/upload-pages-artifact@v3
        with:
          path: public

  deploy:
    needs: build
    runs-on: ubuntu-22.04
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}
    steps:
      - name: Deploy to GitHub Pages
        id: deployment
        uses: actions/deploy-pages@v4
```

Push this workflow:

```bat
cd "C:\Users\baozh\Documents\dca-theory-site"
git add .github\workflows\deploy.yml
git commit -m "add GitHub Pages deploy workflow"
git push
```

---

# 9. Vault Trigger Workflow

File:

```text
C:\Users\baozh\OneDrive\文档\Knowledge Base\DCA Theory\.github\workflows\trigger-site-deploy.yml
```

Content:

```yaml
name: Trigger DCA site deploy

on:
  push:
    branches:
      - main

jobs:
  trigger:
    runs-on: ubuntu-latest
    steps:
      - name: Trigger site deploy
        run: |
          curl -L \
            -X POST \
            -H "Accept: application/vnd.github+json" \
            -H "Authorization: Bearer ${{ secrets.SITE_DEPLOY_TOKEN }}" \
            -H "X-GitHub-Api-Version: 2022-11-28" \
            https://api.github.com/repos/paulbliu/paulbliu.github.io/dispatches \
            -d '{"event_type":"vault-updated"}'
```

Push this workflow:

```bat
cd "C:\Users\baozh\OneDrive\文档\Knowledge Base\DCA Theory"
git add .github\workflows\trigger-site-deploy.yml
git commit -m "trigger site deploy from vault updates"
git push
```

---

# 10. Required GitHub Secret

In the vault repo:

```text
https://github.com/paulbliu/dca-vault
```

Go to:

```text
Settings → Secrets and variables → Actions → New repository secret
```

Create:

```text
SITE_DEPLOY_TOKEN
```

Value:

```text
PASTE_YOUR_GITHUB_TOKEN_HERE

```

This allows the vault repo to trigger deployment in:

```text
paulbliu/paulbliu.github.io
```

---

# 11. Normal Update Procedure

After editing notes in Obsidian, run:

```bat
cd "C:\Users\baozh\OneDrive\文档\Knowledge Base\DCA Theory"
git add .
git commit -m "update notes"
git push
```

This automatically triggers:

```text
dca-vault → paulbliu.github.io → Quartz build → GitHub Pages deploy
```

---

# 12. Manual Site Deploy Trigger

Use this only if the automatic trigger does not work:

```bat
cd "C:\Users\baozh\Documents\dca-theory-site"
git commit --allow-empty -m "trigger deploy"
git push
```

---

# 13. Check Deployment

Go to:

```text
https://github.com/paulbliu/paulbliu.github.io/actions
```

Look for:

```text
Deploy Quartz site to GitHub Pages
```

Success means green check.

Then open:

```text
https://paulbliu.github.io
```

---

# 14. Common Commands

## Check status

```bat
git status
```

## Add all changes

```bat
git add .
```

## Commit changes

```bat
git commit -m "update notes"
```

## Push changes

```bat
git push
```

## Check remote

```bat
git remote -v
```

## Set remote

```bat
git remote set-url origin https://github.com/paulbliu/dca-vault.git
```

or for site repo:

```bat
git remote set-url origin https://github.com/paulbliu/paulbliu.github.io.git
```

---

# 15. Troubleshooting

## Localhost does not work

Run:

```bat
cd "C:\Users\baozh\Documents\dca-theory-site"
npx quartz build --serve
```

Then open:

```text
http://localhost:8080
```

## Site shows XML

Disable RSS in `quartz.config.ts`:

```ts
Plugin.ContentIndex({
  enableSiteMap: true,
  enableRSS: false,
}),
```

Then push:

```bat
cd "C:\Users\baozh\Documents\dca-theory-site"
git add quartz.config.ts
git commit -m "disable RSS feed"
git push
```

## Site shows 404

Make sure vault has:

```text
index.md
```

at the root:

```text
C:\Users\baozh\OneDrive\文档\Knowledge Base\DCA Theory\index.md
```

## Vault push does not update site

Check the vault workflow:

```text
.github\workflows\trigger-site-deploy.yml
```

Check the secret:

```text
SITE_DEPLOY_TOKEN
```

Check site repo Actions:

```text
https://github.com/paulbliu/paulbliu.github.io/actions
```

## Remote already exists

Use:

```bat
git remote set-url origin REPO_URL
```

## Repository not found

Check that the GitHub repo exists and the remote URL is correct.

## Password authentication failed

Use a Personal Access Token instead of GitHub password.

## Mental Model

```text
Obsidian edit
  ↓
git push from vault repo
  ↓
dca-vault workflow triggers
  ↓
paulbliu.github.io workflow runs
  ↓
Quartz builds
  ↓
Site updates (final)
```

---

## Normal Update Procedure

From now on, after editing notes in Obsidian, run:

```bat
cd "C:\Users\baozh\OneDrive\文档\Knowledge Base\DCA Theory"
git add .
git commit -m "update notes"
git push
```
