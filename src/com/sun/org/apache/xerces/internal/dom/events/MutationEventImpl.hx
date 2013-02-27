package com.sun.org.apache.xerces.internal.dom.events;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2002,2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class MutationEventImpl extends com.sun.org.apache.xerces.internal.dom.events.EventImpl implements org.w3c.dom.events.MutationEvent
{
	public var attrChange : java.StdTypes.Int16;
	
	public static var DOM_SUBTREE_MODIFIED(default, null) : String;
	
	public static var DOM_NODE_INSERTED(default, null) : String;
	
	public static var DOM_NODE_REMOVED(default, null) : String;
	
	public static var DOM_NODE_REMOVED_FROM_DOCUMENT(default, null) : String;
	
	public static var DOM_NODE_INSERTED_INTO_DOCUMENT(default, null) : String;
	
	public static var DOM_ATTR_MODIFIED(default, null) : String;
	
	public static var DOM_CHARACTER_DATA_MODIFIED(default, null) : String;
	
	/** @return the name of the Attr which
	changed, for DOMAttrModified events.
	Undefined for others.
	*/
	@:overload public function getAttrName() : String;
	
	/**
	*  <code>attrChange</code> indicates the type of change which triggered
	* the DOMAttrModified event. The values can be <code>MODIFICATION</code>
	* , <code>ADDITION</code>, or <code>REMOVAL</code>.
	*/
	@:overload public function getAttrChange() : java.StdTypes.Int16;
	
	/** @return the new string value of the Attr for DOMAttrModified events, or
	of the CharacterData node for DOMCharDataModifed events.
	Undefined for others.
	*/
	@:overload public function getNewValue() : String;
	
	/** @return the previous string value of the Attr for DOMAttrModified events, or
	of the CharacterData node for DOMCharDataModifed events.
	Undefined for others.
	*/
	@:overload public function getPrevValue() : String;
	
	/** @return a Node related to this event, other than the target that the
	node was dispatched to. For DOMNodeRemoved, it is the node which
	was removed.
	No other uses are currently defined.
	*/
	@:overload public function getRelatedNode() : org.w3c.dom.Node;
	
	/** Initialize a mutation event, or overwrite the event's current
	settings with new values of the parameters.
	*/
	@:overload public function initMutationEvent(typeArg : String, canBubbleArg : Bool, cancelableArg : Bool, relatedNodeArg : org.w3c.dom.Node, prevValueArg : String, newValueArg : String, attrNameArg : String, attrChangeArg : java.StdTypes.Int16) : Void;
	
	
}
