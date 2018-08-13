//
//  Vertices.h
//  GraphLib
//
//  Created by Dmitry Grigorev on 13.08.18.
//  Copyright © 2018 Dmitry Grigorev. All rights reserved.
//

#ifndef Vertices_h
#define Vertices_h

#import <Foundation/Foundation.h>


/**
 Коллекция для хранения вершин графов
 */
@interface VerticesCollection: NSObject

/**
 Vertices stored here
 */
@property (strong, nonatomic) NSMutableDictionary<NSString*, VerticesCollection*> *_verticesCollection;

/**
 Initialize empty dictionary of vertices

 @return <#return value description#>
 */
-(id) init;

/**
 Add vertex with same id

 @param vertex_id vertex name (NSString type)
 @return true - if added successfully, false - otherwise
 */
- (bool) AddVertex:(NSString*)vertex_id;

- (bool) AddChild:(NSString*)vertex_id second:(NSString*)child_id;

/**
 Remove vertex with same id
 
 @param vertex_id vertex name (NSString* type)
 @return true - if removed successfully, false - otherwise
 */
- (bool) RemoveVertex:(NSString*)vertex_id;


/**
 Checks that specified value stored in collection

 @param vertex_id <#vertex_id description#>
 @return <#return value description#>
 */
- (bool) Contains:(NSString*)vertex_id;

-(void) Print;

/**
 Get count of vertices
 @return count of vertices in collection (int type)
 */
- (NSUInteger) Count;
@end

#endif /* Vertices_h */
