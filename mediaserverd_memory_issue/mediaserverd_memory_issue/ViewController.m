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
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"AVPlayerModal"]) {
        self.avplayerViewController = segue.destinationViewController;
//        AVPlayer *player = [[AVPlayer alloc] initWithURL:self.m3u8PlaylistUrl];
//        self.avplayerViewController.player = player;
        
    }
}

@end
