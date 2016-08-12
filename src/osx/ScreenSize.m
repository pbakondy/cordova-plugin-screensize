// https://developer.apple.com/library/mac/documentation/Cocoa/Reference/ApplicationKit/Classes/NSScreen_Class/
// https://developer.apple.com/library/prerelease/content/documentation/GraphicsImaging/Conceptual/QuartzDisplayServicesConceptual/Articles/DisplayInfo.html

#import "ScreenSize.h"

@implementation ScreenSize

- (NSDictionary*)screenProperties
{

    NSScreen *screen = [NSScreen mainScreen];
    NSDictionary *description = [screen deviceDescription];
    NSSize displayPixelSize = [[description objectForKey:NSDeviceSize] sizeValue];
    CGSize displayPhysicalSize = CGDisplayScreenSize(
                [[description objectForKey:@"NSScreenNumber"] unsignedIntValue]);

    return @{
             @"width": [NSNumber numberWithFloat:displayPixelSize.width],
             @"height": [NSNumber numberWithFloat:displayPixelSize.height],
             @"physicalWidth": [NSNumber numberWithFloat:displayPhysicalSize.width],
             @"physicalHeight": [NSNumber numberWithFloat:displayPhysicalSize.height],
             @"dpi": [NSNumber numberWithFloat:(displayPixelSize.width / displayPhysicalSize.width) * 25.4f]
    };
}

- (void)get:(CDVInvokedUrlCommand*)command
{
    NSDictionary* screenProperties = [self screenProperties];

    CDVPluginResult *pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:screenProperties];

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
