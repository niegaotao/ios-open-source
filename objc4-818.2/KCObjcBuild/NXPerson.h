//
//  NXPerson.h
//  KCObjcBuild
//
//  Created by cooci on 2021/1/18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NXPerson : NSObject
@property (nonatomic, copy) NSString *name;
- (void)run;
@end

@interface NXTeacher : NXPerson
- (void)teach;
@end

@interface NXStudent : NXPerson
- (void)study;
@end


@interface NXPerson(Category)
@end

@interface NXTeacher(Category)
@end

@interface NXStudent(Category)
@end





NS_ASSUME_NONNULL_END
