#import <Flutter/Flutter.h>

@interface BackgroundFetchPlugin : NSObject<FlutterPlugin>

/// Registers the BGTaskScheduler launch handlers for the identifiers listed in
/// BGTaskSchedulerPermittedIdentifiers. Only the first call per process does
/// anything.
///
/// The plugin calls this from application:didFinishLaunchingWithOptions:. An
/// app whose plugins are registered after launch (for example under the
/// UIScene lifecycle, where the engine is created with the first scene's view
/// controller) receives that callback only once a scene connects, which is
/// after launch has finished when the app was launched in the background
/// without a scene, and it can receive it again when a scene connects with
/// launch options. BGTaskScheduler requires every handler to be registered
/// once, before launch finishes, so such an app should call this itself from
/// application:didFinishLaunchingWithOptions:.
+ (void)registerBGTaskHandlers;

@end
