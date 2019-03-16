# JALCommunityPageSrc

1. TestPage 
测试framework的demo

2. JALCommunityPage
Framework

3. JALCommunityBundle
bundle

注意事项：
a. 调试时，全部设置成Debug模式，如果是release模式，断点调试有的值看不见。
b. 调试时，先编译一次JALCommunityPage.framework（目标设备使用generic ios device），
然后直接从Debug-iphoneos目录将JALCommunityPage.framework拖进TestPage.xcodeproj（如果有bundle的话也拖进去），
这样即使改了framework工程里的代码，也只要直接编译TestPage即可（会自动编译framework生成最新文件,而且文件路径一样不用再拖一次）。


