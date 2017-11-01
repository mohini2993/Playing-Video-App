//
//  VideoPlayerViewController.h
//  ios_playingVideo
//
//  Created by Student 01 on 10/10/17.
//  Copyright © 2017 mohini. All rights reserved.
//

#import <AVKit/AVKit.h>
#import <MediaPlayer/MediaPlayer.h>
#import <AVKit/AVKit.h>
#import "ViewController.h"
@interface VideoPlayerViewController : AVPlayerViewController
@property NSString *songName;
@property AVPlayer *avplayer1;
@end
