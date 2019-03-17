//
//  main.m
//  NetBeans
//
//  Created by ky saeed on 2019/03/17.
//  Copyright © 2019 kysaeed. All rights reserved.
//

#import <Cocoa/Cocoa.h>

int main(int argc, const char * argv[]) {
    NSFileManager *fileManager = [ NSFileManager defaultManager];
    NSString *baseDir = [[[NSBundle mainBundle] resourcePath] stringByAppendingString: @"/netbeans/bin/"];
    [fileManager changeCurrentDirectoryPath:baseDir];
    
    NSString* launchFilePath = [[[NSBundle mainBundle] resourcePath] stringByAppendingString: @"/netbeans/bin/netbeans"];
    
    NSTask* task = [[NSTask alloc] init];
    task.launchPath = launchFilePath;
    // task.arguments = null;
    [task launch];
    [task waitUntilExit];
    
    return 0;
}
