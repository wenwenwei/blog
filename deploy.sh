git push

yarn
yarn docs:build

mv ./docs-dist ../

git branch gh-pages -D
git checkout --orphan gh-pages

shopt -s extglob
rm -rf ./!(node_modules)
shopt -u extglob

mv ../docs-dist ./
mv ./docs-dist/* ./

rm -rf ./.vscode ./docs-dist ./.temp

git add .
git commit -m 'Blog项目构建时间：'$(date "+%Y%m%d-%H:%M:%S")

git push origin gh-pages -f

git checkout master
git branch gh-pages -D
