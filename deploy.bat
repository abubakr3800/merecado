@echo off
npm run build

@REM # navigate into the build output directory
cd dist

@REM # if you are deploying to a custom domain
@REM # echo 'www.example.com' -> CNAME

git init
git add -A
git commit -m 'deploy'

@REM # if you are deploying to https://<USERNAME>.github.io
@REM # git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

@REM # if you are deploying to https://<USERNAME>.github.io/<REPO>
@REM # git push -f git@github.com:jjmax75/vue-gh-pages.git master:gh-pages
git push -f

@REM cd -