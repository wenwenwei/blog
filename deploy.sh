yarn
yarn docs:build

mv ./docs-dist ../

git branch gh-pages -D
git checkout --orphan gh-pages
rm \'.gitignore\'
rm \'.vscode\'
rm -rf ./*

rm -rf ./docs-dist
mv ../docs-dist ./
mv ./docs-dist/* ./

git add .
git commit -m 'Blog项目构建时间：'$(date "+%Y%m%d-%H:%M:%S")

git push origin gh-pages -f

git checkout master
git branch gh-pages -D