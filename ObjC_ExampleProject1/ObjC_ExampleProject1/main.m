//
//  main.m
//  ObjC_ExampleProject1
//
//  Created by 한현민 on 2023/09/12.
//

#import <Foundation/Foundation.h>
//#import "Fraction.h"
//#import "Empty.h"
//
//@interface Parent : NSObject
//-(void)internal;
//-(void)external;
//@end
//@implementation Parent
//-(void)internal {
//    printf("부모 클래스, 내부 메서드\n");
//}
//-(void)external {
//    printf("부모 클래스, 외부 메서드\n");
//    [self internal]; // 외부에서 내부 호출
//}
//@end
//
//@interface Child: Parent
//-(void)internal;
//@end
//@implementation Child
//-(void)internal {
//    printf("자식 클래스, 내부 메서드\n");
//}
////-(void)external {
////    printf("부모 클래스, 외부 메서드\n");
////    [self internal]; // 외부에서 내부 호출. Child의 internal이 대신 호출된다.
////}
//@end

@interface Volume : NSObject
{
    int val;
    int min, max, step;
}
-(id)initWithMin:(int)a max:(int)b step:(int)s;
-(id)init;
@end
@implementation Volume
// 생성자 init은 id 타입의 값을 반환한다.
-(id)initWithMin:(int)a max:(int)b step:(int)s {
    self = [super init];
    if (self != nil) {
        val = min = a;
        max = b;
        step = s;
    }
    return self;
}
-(id)init {
    self = [self initWithMin:0 max:10 step:1];
    return self;
}
@end

@interface ChildVolume : Volume
-(id)initWithMin:(int)a max:(int)b step:(int)s;
@end
@implementation ChildVolume
-(id)initWithMin:(int)a max:(int)b step:(int)s {
    self = [super init];
    // -> 실제로 실행되는 함수는 ChildVolume의 initWithMin
    // 즉, initWithMin -> initWithMin -> initWithMin 무한 호출....
    // Stack Overflow 발생
    return self;
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        ChildVolume *p = [[ChildVolume alloc] initWithMin:0 max:5 step:1];
        
        
//        id p, c;
//        p = [[Parent alloc] init];
//        c = [[Child alloc] init];
//        [p external];
//        [c external];
        
//        Fraction *frac = [
//            [Fraction alloc] init
//        ];
//
//        [frac setNum:20];
//        [frac setDen:40];
//        [frac reduce];
//        [frac print];
        
        // alloc으로 인스턴스 메모리 할당 -> init으로 인스턴스 초기화
        // 이 작업을 직접 해줘야 한다.
//        Empty *a = [[Empty alloc] init];
//        Empty *b = [[Empty alloc] init];
//
//        [Empty settingStatic:5];
//        [Empty settingStatic:4];
//
//        NSLog(@"0x%@ 0x%@", [a self], [b self]);
//
//        NSLog(@"인스턴스 메서드로 클래스 변수 접근 : %d %d",
//              [a gettingStatic], [b gettingStatic]);
//        NSLog(@"extern 함수로 클래스 변수 접근 : %d",
//              gettingStatic());
//
//        settingStatic(6);
    }
    return 0;
}
