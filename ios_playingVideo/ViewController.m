//
//  ViewController.m
//  ios_playingVideo
//
//  Created by Student 01 on 03/10/17.
//  Copyright © 2017 mohini. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    self.videoSongsName=@[@"'Chittiyaan Kalaiyaan' FULL VIDEO SONG - Roy - Meet Bros Anjjan, Kanika Kapoor - T-SERIES",@"Cham Cham Full Video Song Baghi Full HD With Lyrics",@"Mere Rashke Qamar Tu Ne Pehli Nazar _ Remix Best Hindi Love Song _ Junaid Asghar",@"'Hawa Hawa' (Full Video Song) - Mubarakan - Anil Kapoor, Arjun Kapoor, Ileana D’Cruz, Athiya Shetty",@"Main Tera Boyfriend Song - Raabta - Arijit S - Neha K Meet Bros - Sushant Singh Rajput Kriti Sanon"];
   // NSString *filePath=[[NSBundle mainBundle]pathForResource:@"Cham Cham Full Video Song Baghi Full HD With Lyrics.mp4" ofType:nil inDirectory:@"video"];
    
  /*  NSString *filePath=[[NSBundle mainBundle]pathForResource:self.selectedSongName ofType:@"mp4" inDirectory:@"video"];
    self.fileURL=[NSURL fileURLWithPath:filePath];
    self.avplayer=[AVPlayer playerWithURL:self.fileURL];
    self.avplayer.actionAtItemEnd=AVPlayerActionAtItemEndNone;
    [self.avplayer play];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(itemDidFinishPlaying:) name:AVPlayerItemDidPlayToEndTimeNotification object:[self.avplayer currentItem]];*/
    
    

        // Do any additional setup after loading the view, typically from a nib.
}
-(void)itemDidFinishPlaying:(NSNotification *)notification
{
    AVPlayerItem *player=[notification object];
    [player seekToTime:kCMTimeZero];
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return  self.videoSongsName.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    cell.textLabel.text=[self.videoSongsName objectAtIndex:indexPath.row];
    
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
 
    UITableViewCell *cell=[tableView cellForRowAtIndexPath:indexPath];
    self.selectedSongName=cell.textLabel.text;
    NSLog(@"Selected Name: %@",self.selectedSongName);
    self.songNameLb.text=self.selectedSongName;
    
   VideoPlayerViewController *pvc=[self.storyboard instantiateViewControllerWithIdentifier:@"VideoPlayerViewController"];
    pvc.songName=cell.textLabel.text;
    
    NSString *filePath=[[NSBundle mainBundle]pathForResource:self.selectedSongName ofType:@"mp4" inDirectory:@"video"];
    self.fileURL=[NSURL fileURLWithPath:filePath];
    pvc.avplayer1=[AVPlayer playerWithURL:self.fileURL];
    pvc.avplayer1.actionAtItemEnd=AVPlayerActionAtItemEndNone;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(itemDidFinishPlaying:) name:AVPlayerItemDidPlayToEndTimeNotification object:[pvc.avplayer1 currentItem]];
  [self.navigationController pushViewController:pvc animated:YES];
    
    
 
    
    
    
 /*  AVPlayerLayer *videoLayer=[AVPlayerLayer playerLayerWithPlayer:self.avplayer];
    videoLayer.frame=self.view.bounds;
    videoLayer.frame=CGRectMake(0, 0, 460, 500);
    videoLayer.videoGravity=AVLayerVideoGravityResizeAspectFill;
    [self.view.layer addSublayer:videoLayer];
    [self.avplayer play];*/
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





@end
