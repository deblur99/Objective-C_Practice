//
//  Fraction.h
//  ObjC_ExampleProject1
//
//  Created by 한현민 on 2023/09/14.
//

#ifndef Fraction_h
#define Fraction_h

@interface Fraction : NSObject
{
    int num;
    int den;
}
// getter / setter 메서드를 대체
// @property로 선언된 변수는 @implementation에서 @synthesize로 명시해 주어야 한다.
// readonly -> getter만, readwrite -> getter, setter 둘 다
@property (readwrite) int num;
@property (readwrite) int den;

-(void)setTo:(int)n over:(int)d;

-(void)reduce;
-(void)print;
-(float)convertToFloat:(int)n;
-(void)add:(Fraction *)f;
@end


#endif /* Fraction_h */
