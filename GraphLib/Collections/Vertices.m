//
//  Vertices.m
//  GraphLib
//
//  Created by Dmitry Grigorev on 13.08.18.
//  Copyright © 2018 Dmitry Grigorev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Vertices.h"

@implementation VerticesCollection: NSObject

-(id) init{
    if(self = [super init])
    {
        __verticesCollection = [__verticesCollection init];
    }
    return self;
}

-(bool) AddVertex:(NSString *)vertex_id{
    bool contains = [__verticesCollection objectForKey:vertex_id] != nil;
    if(!contains)
        [__verticesCollection setValue:[VerticesCollection init] forKey:vertex_id];
    return contains;
}

-(bool) RemoveVertex:(NSString *)vertex_id{
    [__verticesCollection removeValueAtIndex:0 fromPropertyWithKey:vertex_id];
    return ![self Contains:vertex_id];
}

-(bool) Contains:(NSString *)vertex_id
{
    return [__verticesCollection objectForKey:vertex_id] != nil;
}

-(NSUInteger) Count{
    return [__verticesCollection count];
}
@end
