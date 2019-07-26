//
//  main.m
//  myTest
//
//  Created by  chenfei on 2019/7/27.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <malloc/malloc.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSObject *obj = [[NSObject alloc] init];
        
        //获得NSObject实例对象的成员变量所占用的大小 >> 8
        NSLog(@"%zd", class_getInstanceSize([NSObject class]));
        
        //获得obj指针所指向内存的大小 >> 16
        //malloc_size(const void *ptr):Returns size of given ptr
        NSLog(@"%zd", malloc_size((__bridge const void *)obj));
    }
    return 0;
}
