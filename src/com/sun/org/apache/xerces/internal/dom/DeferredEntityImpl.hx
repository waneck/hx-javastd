package com.sun.org.apache.xerces.internal.dom;
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
/**
* Entity nodes hold the reference data for an XML Entity -- either
* parsed or unparsed. The nodeName (inherited from Node) will contain
* the name (if any) of the Entity. Its data will be contained in the
* Entity's children, in exactly the structure which an
* EntityReference to this name will present within the document's
* body.
* <P>
* Note that this object models the actual entity, _not_ the entity
* declaration or the entity reference.
* <P>
* An XML processor may choose to completely expand entities before
* the structure model is passed to the DOM; in this case, there will
* be no EntityReferences in the DOM tree.
* <P>
* Quoting the 10/01 DOM Proposal,
* <BLOCKQUOTE>
* "The DOM Level 1 does not support editing Entity nodes; if a user
* wants to make changes to the contents of an Entity, every related
* EntityReference node has to be replaced in the structure model by
* a clone of the Entity's contents, and then the desired changes
* must be made to each of those clones instead. All the
* descendants of an Entity node are readonly."
* </BLOCKQUOTE>
* I'm interpreting this as: It is the parser's responsibilty to call
* the non-DOM operation setReadOnly(true,true) after it constructs
* the Entity. Since the DOM explicitly decided not to deal with this,
* _any_ answer will involve a non-DOM operation, and this is the
* simplest solution.
*
* @xerces.internal
*
* @since  PR-DOM-Level-1-19980818.
*/
extern class DeferredEntityImpl extends com.sun.org.apache.xerces.internal.dom.EntityImpl implements com.sun.org.apache.xerces.internal.dom.DeferredNode
{
	/** Node index. */
	@:protected @:transient private var fNodeIndex : Int;
	
	/** Returns the node index. */
	@:overload @:public public function getNodeIndex() : Int;
	
	/**
	* Synchronize the entity data. This is special because of the way
	* that the "fast" version stores the information.
	*/
	@:overload @:protected override private function synchronizeData() : Void;
	
	/** Synchronize the children. */
	@:overload @:protected override private function synchronizeChildren() : Void;
	
	
}
