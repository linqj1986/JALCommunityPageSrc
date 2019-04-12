# JALCommunityPageSrc

## 1. TestPage

-测试framework的demo

## 2. JALCommunityPage

-Framework
-创建完framework，buildsetting里修改mach-o为static library再编译。

## 3. JALCommunityBundle

-bundle
-创建完bundle，删除目录下的info.plist，buildsetting里删除info.plist file字断的内容再编译。

【注意事项】---------------
```
a. 调试时，全部设置成Debug模式，如果是release模式，断点调试有的值看不见。

b. 调试时，先编译一次JALCommunityPage.framework（目标设备使用generic ios device），
然后直接从Debug-iphoneos目录将JALCommunityPage.framework拖进TestPage.xcodeproj（如果有bundle的话也拖进去），
这样即使改了framework工程里的代码，也只要直接编译TestPage即可（会自动编译framework生成最新文件,而且文件路径一样不用再拖一次）。
```
【提交代码】---------------
```
1.查看状态
git status
如果路径不对则更换路径
Git checkout 0.0.1

2.提交到本地
git add --a
git commit -m "提交时的备注"

3.提交到远程
git push origin [master|0.0.1]

4.创建分支
Git branch 0.0.1

5.删除目录
Git rm xx/xx -r

6.从远程下载
git remote -v
git fetch origin master 或 git merge FETCH_HEAD
```
【提交到pod】---------------
```
1.创建podspec文件
pod spec create JALCommunityPage
pod lib lint

2.添加关联
pod repo add JALCommunityPage https://github.com/linqj1986/JALCommunityPage.git
pod repo lint

3.提交到pod
pod repo push JALCommunityPage JALCommunityPage.podspec
```

