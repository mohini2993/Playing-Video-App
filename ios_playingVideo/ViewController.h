//
//  ViewController.h
//  ios_playingVideo
//
//  Created by Student 01 on 03/10/17.
//  Copyright © 2017 mohini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
#import <AVFoundation/AVFoundation.h>
#import <AVKit/AVKit.h>
#import "VideoPlayerViewController.h"
@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *myTableView;

@property AVPlayer *avplayer;
@property NSArray *videoSongsName;
@property (weak, nonatomic) IBOutlet UILabel *songNameLb;

@property NSString *selectedSongName;
@property NSURL *fileURL;

@end

