// Copyright 2010 Omni Development, Inc.  All rights reserved.
/* DO NOT MODIFY: This file is autogenerated! */

#import "ODOPerfModel.h"
#import <OmniDataObjects/ODOModel-Creation.h>

#import <Foundation/NSValue.h>
#import <Foundation/NSString.h>
#import <Foundation/NSData.h>
#import <Foundation/NSDate.h>




NSString * const ODOPerfBugEntityName = @"Bug";

NSString * const ODOPerfBugBugTags = @"bugTags";
NSString * const ODOPerfBugDateAdded = @"dateAdded";
NSString * const ODOPerfBugNotes = @"notes";
NSString * const ODOPerfBugPk = @"pk";
NSString * const ODOPerfBugState = @"state";
NSString * const ODOPerfBugTitle = @"title";

NSString * const ODOPerfBugTagEntityName = @"BugTag";

NSString * const ODOPerfBugTagBug = @"bug";
NSString * const ODOPerfBugTagPk = @"pk";
NSString * const ODOPerfBugTagTag = @"tag";

NSString * const ODOPerfNoteEntityName = @"Note";

NSString * const ODOPerfNoteAuthor = @"author";
NSString * const ODOPerfNoteBug = @"bug";
NSString * const ODOPerfNoteDateAdded = @"dateAdded";
NSString * const ODOPerfNotePk = @"pk";
NSString * const ODOPerfNoteText = @"text";

NSString * const ODOPerfStateEntityName = @"State";

NSString * const ODOPerfStateBugs = @"bugs";
NSString * const ODOPerfStateName = @"name";
NSString * const ODOPerfStatePk = @"pk";

NSString * const ODOPerfTagEntityName = @"Tag";

NSString * const ODOPerfTagBugTags = @"bugTags";
NSString * const ODOPerfTagName = @"name";
NSString * const ODOPerfTagPk = @"pk";

ODOModel * ODOPerfModel(void)
{
    static ODOModel *model = nil;
    if (model) return model;

    ODORelationship *Bug_bugTags = ODORelationshipCreate(ODOPerfBugBugTags, NO/*optional*/, NO/*transient*/, @selector(bugTags), @selector(setBugTags:), YES/*toMany*/, ODORelationshipDeleteRuleCascade);
    ODOAttribute *Bug_dateAdded = ODOAttributeCreate(ODOPerfBugDateAdded, NO/*optional*/, NO/*transient*/, @selector(dateAdded), @selector(setDateAdded:), ODOAttributeTypeDate, [NSDate class], nil/*default value*/, NO/*primary*/);
    ODORelationship *Bug_notes = ODORelationshipCreate(ODOPerfBugNotes, NO/*optional*/, NO/*transient*/, @selector(notes), @selector(setNotes:), YES/*toMany*/, ODORelationshipDeleteRuleCascade);
    ODOAttribute *Bug_pk = ODOAttributeCreate(ODOPerfBugPk, NO/*optional*/, NO/*transient*/, @selector(pk), @selector(setPk:), ODOAttributeTypeString, [NSString class], nil/*default value*/, YES/*primary*/);
    ODORelationship *Bug_state = ODORelationshipCreate(ODOPerfBugState, NO/*optional*/, NO/*transient*/, @selector(state), @selector(setState:), NO/*toMany*/, ODORelationshipDeleteRuleNullify);
    ODOAttribute *Bug_title = ODOAttributeCreate(ODOPerfBugTitle, NO/*optional*/, NO/*transient*/, @selector(title), @selector(setTitle:), ODOAttributeTypeString, [NSString class], nil/*default value*/, NO/*primary*/);
    ODOEntity *Bug = ODOEntityCreate(ODOPerfBugEntityName, @"I:Bug", @"U:Bug", @"D:Bug", @"PK:Bug",
    @"ODOPerfBug",
    [NSArray arrayWithObjects:Bug_bugTags, Bug_dateAdded, Bug_notes, Bug_pk, Bug_state, Bug_title, nil]);

    ODORelationship *BugTag_bug = ODORelationshipCreate(ODOPerfBugTagBug, NO/*optional*/, NO/*transient*/, @selector(bug), @selector(setBug:), NO/*toMany*/, ODORelationshipDeleteRuleNullify);
    ODOAttribute *BugTag_pk = ODOAttributeCreate(ODOPerfBugTagPk, NO/*optional*/, NO/*transient*/, @selector(pk), @selector(setPk:), ODOAttributeTypeString, [NSString class], nil/*default value*/, YES/*primary*/);
    ODORelationship *BugTag_tag = ODORelationshipCreate(ODOPerfBugTagTag, NO/*optional*/, NO/*transient*/, @selector(tag), @selector(setTag:), NO/*toMany*/, ODORelationshipDeleteRuleNullify);
    ODOEntity *BugTag = ODOEntityCreate(ODOPerfBugTagEntityName, @"I:BugTag", @"U:BugTag", @"D:BugTag", @"PK:BugTag",
    @"ODOPerfBugTag",
    [NSArray arrayWithObjects:BugTag_bug, BugTag_pk, BugTag_tag, nil]);

    ODOAttribute *Note_author = ODOAttributeCreate(ODOPerfNoteAuthor, NO/*optional*/, NO/*transient*/, @selector(author), @selector(setAuthor:), ODOAttributeTypeString, [NSString class], nil/*default value*/, NO/*primary*/);
    ODORelationship *Note_bug = ODORelationshipCreate(ODOPerfNoteBug, NO/*optional*/, NO/*transient*/, @selector(bug), @selector(setBug:), NO/*toMany*/, ODORelationshipDeleteRuleNullify);
    ODOAttribute *Note_dateAdded = ODOAttributeCreate(ODOPerfNoteDateAdded, NO/*optional*/, NO/*transient*/, @selector(dateAdded), @selector(setDateAdded:), ODOAttributeTypeDate, [NSDate class], nil/*default value*/, NO/*primary*/);
    ODOAttribute *Note_pk = ODOAttributeCreate(ODOPerfNotePk, NO/*optional*/, NO/*transient*/, @selector(pk), @selector(setPk:), ODOAttributeTypeString, [NSString class], nil/*default value*/, YES/*primary*/);
    ODOAttribute *Note_text = ODOAttributeCreate(ODOPerfNoteText, NO/*optional*/, NO/*transient*/, @selector(text), @selector(setText:), ODOAttributeTypeString, [NSString class], nil/*default value*/, NO/*primary*/);
    ODOEntity *Note = ODOEntityCreate(ODOPerfNoteEntityName, @"I:Note", @"U:Note", @"D:Note", @"PK:Note",
    @"ODOPerfNote",
    [NSArray arrayWithObjects:Note_author, Note_bug, Note_dateAdded, Note_pk, Note_text, nil]);

    ODORelationship *State_bugs = ODORelationshipCreate(ODOPerfStateBugs, NO/*optional*/, NO/*transient*/, @selector(bugs), @selector(setBugs:), YES/*toMany*/, ODORelationshipDeleteRuleNullify);
    ODOAttribute *State_name = ODOAttributeCreate(ODOPerfStateName, NO/*optional*/, NO/*transient*/, @selector(name), @selector(setName:), ODOAttributeTypeString, [NSString class], nil/*default value*/, NO/*primary*/);
    ODOAttribute *State_pk = ODOAttributeCreate(ODOPerfStatePk, NO/*optional*/, NO/*transient*/, @selector(pk), @selector(setPk:), ODOAttributeTypeString, [NSString class], nil/*default value*/, YES/*primary*/);
    ODOEntity *State = ODOEntityCreate(ODOPerfStateEntityName, @"I:State", @"U:State", @"D:State", @"PK:State",
    @"ODOPerfState",
    [NSArray arrayWithObjects:State_bugs, State_name, State_pk, nil]);

    ODORelationship *Tag_bugTags = ODORelationshipCreate(ODOPerfTagBugTags, NO/*optional*/, NO/*transient*/, @selector(bugTags), @selector(setBugTags:), NO/*toMany*/, ODORelationshipDeleteRuleCascade);
    ODOAttribute *Tag_name = ODOAttributeCreate(ODOPerfTagName, NO/*optional*/, NO/*transient*/, @selector(name), @selector(setName:), ODOAttributeTypeString, [NSString class], nil/*default value*/, NO/*primary*/);
    ODOAttribute *Tag_pk = ODOAttributeCreate(ODOPerfTagPk, NO/*optional*/, NO/*transient*/, @selector(pk), @selector(setPk:), ODOAttributeTypeString, [NSString class], nil/*default value*/, YES/*primary*/);
    ODOEntity *Tag = ODOEntityCreate(ODOPerfTagEntityName, @"I:Tag", @"U:Tag", @"D:Tag", @"PK:Tag",
    @"ODOPerfTag",
    [NSArray arrayWithObjects:Tag_bugTags, Tag_name, Tag_pk, nil]);

    model = ODOModelCreate(@"ODOPerf", [NSArray arrayWithObjects:Bug, BugTag, Note, State, Tag, nil]);
    ODORelationshipBind(Bug_bugTags, Bug, BugTag, BugTag_bug);
    ODOPropertyBind(Bug_dateAdded, Bug);
    ODORelationshipBind(Bug_notes, Bug, Note, Note_bug);
    ODOPropertyBind(Bug_pk, Bug);
    ODORelationshipBind(Bug_state, Bug, State, State_bugs);
    ODOPropertyBind(Bug_title, Bug);
    ODOEntityBind(Bug, model);

    ODORelationshipBind(BugTag_bug, BugTag, Bug, Bug_bugTags);
    ODOPropertyBind(BugTag_pk, BugTag);
    ODORelationshipBind(BugTag_tag, BugTag, Tag, Tag_bugTags);
    ODOEntityBind(BugTag, model);

    ODOPropertyBind(Note_author, Note);
    ODORelationshipBind(Note_bug, Note, Bug, Bug_notes);
    ODOPropertyBind(Note_dateAdded, Note);
    ODOPropertyBind(Note_pk, Note);
    ODOPropertyBind(Note_text, Note);
    ODOEntityBind(Note, model);

    ODORelationshipBind(State_bugs, State, Bug, Bug_state);
    ODOPropertyBind(State_name, State);
    ODOPropertyBind(State_pk, State);
    ODOEntityBind(State, model);

    ODORelationshipBind(Tag_bugTags, Tag, BugTag, BugTag_tag);
    ODOPropertyBind(Tag_name, Tag);
    ODOPropertyBind(Tag_pk, Tag);
    ODOEntityBind(Tag, model);

    ODOModelFinalize(model);
    return model;
}
