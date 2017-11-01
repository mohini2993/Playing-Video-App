//
//  VideoPlayerViewController.m
//  ios_playingVideo
//
//  Created by Student 01 on 10/10/17.
//  Copyright © 2017 mohini. All rights reserved.
//

#import "VideoPlayerViewController.h"

@interface VideoPlayerViewController ()

@end

@implementation VideoPlayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Name:%@",self.songName);
    AVPlayerLayer *videoLayer=[AVPlayerLayer playerLayerWithPlayer:self.avplayer1];
    //videoLayer.frame=self.view.bounds;
    videoLayer.frame=CGRectMake(0, 0, 460, 700);
    videoLayer.videoGravity=AVLayerVideoGravityResizeAspectFill;
    [self.view.layer addSublayer:videoLayer];
    [self.avplayer1 play];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
