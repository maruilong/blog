set input=
set /p input=Please input remark:
git add . && git commit -m "%input%" && git push
echo hexo clean && hexo g && hexo d
@echo "success"