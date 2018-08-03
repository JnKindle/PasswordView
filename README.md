# PasswordView

快速集成

#import "JnPasswordView.h"

实现下面代码：

[[JnPasswordView sharedInstance] showPasswordViewWithInputPwd:^(NSString *pwd) {
        NSLog(@"密码 = %@",pwd);
    } cancel:^{
        NSLog(@"点击了取消");
    } certain:^{
        NSLog(@"点击了确定");
    }];

方便简洁

