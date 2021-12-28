//
//  NXPerson.m
//  KCObjcBuild
//
//  Created by cooci on 2021/1/18.
//

#import "NXPerson.h"

@implementation NXPerson
+ (void)load {
    NSLog(@"%s",__func__);
}

+ (void)initialize {
    NSLog(@"%s",__func__);
}

- (void)run{
    NSLog(@"%s",__func__);
}
@end

@implementation NXStudent
+ (void)load {
    NSLog(@"%s",__func__);
}

+ (void)initialize {
    NSLog(@"%s",__func__);
}

- (void)study{
    NSLog(@"%s",__func__);
}
@end

@implementation NXTeacher
+ (void)load {
    NSLog(@"%s",__func__);
}

+ (void)initialize {
    NSLog(@"%s",__func__);
}

//- (void)teach{
//    NSLog(@"%s",__func__);
//}
@end





@implementation NXTeacher(Category)
+ (void)load {
    NSLog(@"%s",__func__);
}

+ (void)initialize {
    NSLog(@"%s",__func__);
}

//- (void)teach {
//    NSLog(@"%s",__func__);
//}
@end


@implementation NXStudent(Category)
+ (void)load {
    NSLog(@"%s",__func__);
}

+ (void)initialize {
    NSLog(@"%s",__func__);
}

- (void)study {
    NSLog(@"%s",__func__);
}
@end

@implementation NXPerson(Category)
+ (void)load {
    NSLog(@"%s",__func__);
}

+ (void)initialize {
    NSLog(@"%s",__func__);
}

- (void)run {
    NSLog(@"%s",__func__);
}
@end













@interface MVC: NSObject
@end

@implementation MVC
@end
