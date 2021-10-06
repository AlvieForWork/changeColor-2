//
//  CALayer+newButton.m
//  newButton
//
//  Created by worker on 2021/10/5.
//

#import "CALayer+newButton.h"
#import <UIKit/UIKit.h>
@implementation CALayer (borderColor)
- (void)setBorderColorWithUIColor:(UIColor *)color
{
 self.borderColor = color.CGColor;
}
@end
