yarn docs:build

mv ./docs-dist ../


git checkout --orphan gh-pages
git rm -rf .
rm \'.gitignore\'
rm \'.vscode\'

mv ../docs-dist ./
mv ./docs-dist/* ./
rm -rf ./docs-dist

git add .
git commit -m 'Blog项目构建时间：'$(date "+%Y%m%d-%H:%M:%S")