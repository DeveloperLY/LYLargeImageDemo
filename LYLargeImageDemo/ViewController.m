//
//  ViewController.m
//  LYLargeImageDemo
//
//  Created by LiuY on 2018/10/21.
//  Copyright © 2018 DeveloperLY. All rights reserved.
//

#import "ViewController.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import "LYLargeImageView/LYLargeImageView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.imageView sd_setImageWithURL:[NSURL URLWithString:@"https://cdnstatic.zike.com/Uploads/static/picture/2018-07-04/3e4187cfcc8408675f0191dc30cadea7.jpeg"] completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
        UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
        [self.view addSubview:scrollView];
        
        LYLargeImageView *view = [[LYLargeImageView alloc] initWithImage:image];
        view.frame = CGRectMake(0, 0, scrollView.bounds.size.width, scrollView.bounds.size.width * image.size.height / image.size.width);
        [scrollView addSubview:view];
        scrollView.contentSize = view.bounds.size;
    }];
}


@end
