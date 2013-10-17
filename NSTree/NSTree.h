//
//  NSTree.h
//  NSTree
//
//  Created by . Carlin on 10/16/13.
//  Copyright (c) 2013 Carlin Creations. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTreeNode : NSObject<NSCopying>
    @property (nonatomic, strong) NSMutableArray *data;
    @property (nonatomic, strong) NSMutableArray *children;
@end

@interface NSTree : NSObject<NSFastEnumeration, NSCopying>
    @property (nonatomic, strong, readonly) NSTreeNode *root;
    @property (nonatomic, assign, readonly) int count;

    /** @brief Create tree with a certain number of allowable children */
    - (id)initWithNodeCapacity:(int)nodeCapacity;

    /** @brief Add object to tree, true if successful */
    - (bool)addObject:(id)object;

    /** @brief Remove object from tree, returns false if not in tree */
    - (bool)removeObject:(id)object;

    /** @brief Search for object in tree, returns false if not found */
    - (bool)containsObject:(id)object;

    /** @brief Returns true if tree is empty */
    - (bool)isEmpty;

@end
