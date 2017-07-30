//
//  PlaylistDetailViewController.m
//  Algorhythm
//
//  Created by Jeff Ripke on 7/28/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import "PlaylistDetailViewController.h"
#import "Playlist.h"

@interface PlaylistDetailViewController ()

@end

@implementation PlaylistDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (self.playlist) {
        self.playlistCoverImage.image = self.playlist.playlistIconLarge;
        self.playlistCoverImage.backgroundColor = self.playlist.backgroundColor;
        self.playlistTitle.text = self.playlist.playlistTitle;
        self.playlistDescription.text = self.playlist.playlistDescription;
        self.playlistArtist0.text = self.playlist.playlistArtist[0];
        self.playlistArtist1.text = self.playlist.playlistArtist[1];
        self.playlistArtist2.text = self.playlist.playlistArtist[2];
    }
}

@end
