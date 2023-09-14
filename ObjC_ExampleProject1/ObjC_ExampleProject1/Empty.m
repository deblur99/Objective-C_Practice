//
//  Empty.m
//  ObjC_ExampleProject1
//
//  Created by 한현민 on 2023/09/14.
//

#import <Foundation/Foundation.h>
#import "Empty.h"

static int s;

@implementation Empty
// static 변수는 @implementation 안쪽, 바깥쪽 모두 위치할 수 있다.
-(int)gettingStatic {
    return s;
}
+(void)settingStatic:(int)j {
    s = j;
}
@end

int gettingStatic(void) {
    return s;
}

void settingStatic(int j) {
    s = j;
}
