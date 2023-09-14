//
//  Fraction.m
//  ObjC_ExampleProject1
//
//  Created by 한현민 on 2023/09/14.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

@implementation Fraction
// @implementation에서 정의된 메서드가 변수에 접근할 수 있도록 다시 선언
@synthesize num;
@synthesize den;

-(void)setTo:(int)n over:(int)d {
    num = n;
    den = d;
    [self reduce];
}
-(void)reduce {
    int u = num;
    int v = den;
    int temp;
    
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    num /= u;
    den /= u;
}
-(void)print {
    printf("%i/%i\n", num, den);
}
-(float)convertToFloat:(int)n {
    if (den != 0)
        return (float)num / (float)den;
    else
        return 1.0;
}
-(void)add:(Fraction *)f {
    // 인스턴스의 메서드에서 다른 인스턴스의 요소에 접근할 때에는 보통 `getter`보다는 `->` 연산자를 통해
    // 직접 접근하는 것이 추천된다.
    num = num * f->den + den * f->num;
    den = den * f->den;
    [self reduce];
}

@end


