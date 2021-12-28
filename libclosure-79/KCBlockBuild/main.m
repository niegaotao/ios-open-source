//
//  main.m
//  KCBlockBuild
//
//  Created by cooci on 2021/8/23.
//

#import <Foundation/Foundation.h>


@interface NXTester : NSObject
@property (nonatomic, strong) NSString *value;
@end

@implementation NXTester
-(void)t1{
    NSObject *objc = [[NSObject alloc] init];
    NSLog(@"0-%ld",CFGetRetainCount((__bridge CFTypeRef)(objc)));
    void (^__weak kcBlock)(void) = ^void {
        NSLog(@"2-%ld",CFGetRetainCount((__bridge CFTypeRef)(objc)));
    };
    NSLog(@"1-%ld-%@",CFGetRetainCount((__bridge CFTypeRef)(objc)), kcBlock);
    kcBlock();
    NSLog(@"3-%ld-%@",CFGetRetainCount((__bridge CFTypeRef)(objc)), kcBlock);
    id newblock = [kcBlock copy];
    NSLog(@"4-%ld-%@",CFGetRetainCount((__bridge CFTypeRef)(objc)), newblock);
}

-(void)t2{
    NSObject *objc = [[NSObject alloc] init];
    NSLog(@"0-%ld",CFGetRetainCount((__bridge CFTypeRef)(objc)));
    void (^kcBlock)(void) = ^void {
        NSLog(@"2-%ld",CFGetRetainCount((__bridge CFTypeRef)(objc)));
    };
    NSLog(@"1-%ld-%@",CFGetRetainCount((__bridge CFTypeRef)(objc)), kcBlock);
    kcBlock();
    NSLog(@"3-%ld-%@",CFGetRetainCount((__bridge CFTypeRef)(objc)), kcBlock);
    id newblock = [kcBlock copy];
    NSLog(@"4-%ld-%@",CFGetRetainCount((__bridge CFTypeRef)(objc)), newblock);
}

-(void)t3{
//    NSObject *objc = [[NSObject alloc] init];
//    __weak NSObject *weakObj = objc;
//    NSLog(@"0-%d-%ld",CFGetRetainCount((__bridge CFTypeRef)(objc)), CFGetRetainCount((__bridge CFTypeRef)(weakObj)));
//
//    void (^__weak kcBlock)(void) = ^void {
//        NSLog(@"2-%d-%ld",CFGetRetainCount((__bridge CFTypeRef)(objc)), CFGetRetainCount((__bridge CFTypeRef)(weakObj)));
//    };
//    NSLog(@"1-%d-%ld-%@",CFGetRetainCount((__bridge CFTypeRef)(objc)), CFGetRetainCount((__bridge CFTypeRef)(weakObj)), kcBlock);
//    kcBlock();
//    NSLog(@"3-%d-%ld-%@",CFGetRetainCount((__bridge CFTypeRef)(objc)), CFGetRetainCount((__bridge CFTypeRef)(weakObj)), kcBlock);
//    id newblock = [kcBlock copy];
//    NSLog(@"4-%d-%ld-%@",CFGetRetainCount((__bridge CFTypeRef)(objc)), CFGetRetainCount((__bridge CFTypeRef)(weakObj)), newblock);
    
    self.value = @"123";
    __weak NXTester *weakself = self;
    NSLog(@"%ld-%ld",CFGetRetainCount((__bridge CFTypeRef)(self)),CFGetRetainCount((__bridge CFTypeRef)(weakself)));
    void (^kcBlock)(void) = ^void {
        weakself.value;
    };
    kcBlock();
    NSLog(@"%ld-%ld-%@",CFGetRetainCount((__bridge CFTypeRef)(self)),CFGetRetainCount((__bridge CFTypeRef)(weakself)), kcBlock);
}
@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NXTester *tester = [[NXTester alloc] init];
        [tester t3];
    }
    return 0;
}




