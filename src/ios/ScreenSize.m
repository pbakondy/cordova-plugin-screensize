// https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIScreen_Class/index.html
// http://www.paintcodeapp.com/news/ultimate-guide-to-iphone-resolutions


#import "ScreenSize.h"
#import <Cordova/CDV.h>


@implementation ScreenSize

- (NSDictionary*)screenProperties
{

    UIScreen* mainScreen = [UIScreen mainScreen];

    CGFloat screenHeightPoints = mainScreen.bounds.size.height; //points
    CGFloat screenWidthPoints = mainScreen.bounds.size.width; //points
    CGFloat screenScale = mainScreen.scale;

    CGFloat screenHeightPixels = screenHeightPoints * screenScale;
    CGFloat screenWidthPixels = screenWidthPoints * screenScale;

    NSString *screenHeightStr = [[NSNumber numberWithFloat:screenHeightPixels] stringValue];
    NSString *screenWidthStr = [[NSNumber numberWithFloat:screenWidthPixels] stringValue];
    NSString *screenScaleStr = [[NSNumber numberWithFloat:screenScale] stringValue];

//    NSLog(@"height: %@ points", screenHeightS);
//    NSLog(@"width: %@ points", screenWidthS);
//    NSLog(@"wcale: %@", screenScaleS);

    NSMutableDictionary* devProps = [NSMutableDictionary dictionaryWithCapacity:3];
    [devProps setObject:screenWidthStr forKey:@"width"];
    [devProps setObject:screenHeightStr forKey:@"height"];
    [devProps setObject:screenScaleStr forKey:@"scale"];

    NSDictionary* ret = [NSDictionary dictionaryWithDictionary:devProps];
    return ret;
}

- (void)get:(CDVInvokedUrlCommand*)command
{
    NSDictionary* screenProperties = [self screenProperties];

    CDVPluginResult *pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:screenProperties];

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
