#import "ViewController.h"

#import <AVKit/AVKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()

@property (nonatomic) AVPlayerViewController *avplayerViewController;
@property (nonatomic) NSURL *m3u8PlaylistUrl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURL *settingsURL = [[NSBundle mainBundle] URLForResource:@"ServerSettings" withExtension:@"plist"];
    NSDictionary *settings = [NSDictionary dictionaryWithContentsOfURL:settingsURL];
    NSURL *serverURL = [NSURL URLWithString:settings[@"ServerURL"]];
    self.m3u8PlaylistUrl = [serverURL URLByAppendingPathComponent:@"playlist.m3u8"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    NSLog(@"Danger - memory warning!!!");
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"AVPlayerModal"]) {
        self.avplayerViewController = segue.destinationViewController;
        AVPlayer *player = [[AVPlayer alloc] initWithURL:self.m3u8PlaylistUrl];
        self.avplayerViewController.player = player;
    }
}

@end
