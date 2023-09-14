//
//  Empty.h
//  ObjC_ExampleProject1
//
//  Created by 한현민 on 2023/09/14.
//

#ifndef Empty_h
#define Empty_h

@interface Empty : NSObject
{
    // static 멤버는 @implementation 내에서 선언되어야 한다.
    // @interface 내에서 선언시 컴파일 error
//     static int i;
}
-(int)gettingStatic;
+(void)settingStatic:(int)j;
@end

// Empty.m 모듈에 정의될 일반 함수로 클래스 변수 접근.
// Objc에서는 이런 형식을 거의 쓰지 않는다.
// 전방 선언이라 생각하면 될듯.
extern int gettingStatic(void);
extern void settingStatic(int);

#endif /* Empty_h */
