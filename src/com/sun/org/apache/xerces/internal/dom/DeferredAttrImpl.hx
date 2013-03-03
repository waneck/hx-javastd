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
/*
* WARNING: because java doesn't support multi-inheritance some code is
* duplicated. If you're changing this file you probably want to change
* DeferredAttrNSImpl.java at the same time.
*/
/**
* Attribute represents an XML-style attribute of an
* Element. Typically, the allowable values are controlled by its
* declaration in the Document Type Definition (DTD) governing this
* kind of document.
* <P>
* If the attribute has not been explicitly assigned a value, but has
* been declared in the DTD, it will exist and have that default. Only
* if neither the document nor the DTD specifies a value will the
* Attribute really be considered absent and have no value; in that
* case, querying the attribute will return null.
* <P>
* Attributes may have multiple children that contain their data. (XML
* allows attributes to contain entity references, and tokenized
* attribute types such as NMTOKENS may have a child for each token.)
* For convenience, the Attribute object's getValue() method returns
* the string version of the attribute's value.
* <P>
* Attributes are not children of the Elements they belong to, in the
* usual sense, and have no valid Parent reference. However, the spec
* says they _do_ belong to a specific Element, and an INUSE exception
* is to be thrown if the user attempts to explicitly share them
* between elements.
* <P>
* Note that Elements do not permit attributes to appear to be shared
* (see the INUSE exception), so this object's mutability is
* officially not an issue.
* <P>
* DeferredAttrImpl inherits from AttrImpl which does not support
* Namespaces. DeferredAttrNSImpl, which inherits from AttrNSImpl, does.
* @see DeferredAttrNSImpl
*
* @xerces.internal
*
* @author Andy Clark, IBM
* @author Arnaud  Le Hors, IBM
* @since  PR-DOM-Level-1-19980818.
*/
extern class DeferredAttrImpl extends com.sun.org.apache.xerces.internal.dom.AttrImpl implements com.sun.org.apache.xerces.internal.dom.DeferredNode
{
	/** Node index. */
	@:protected @:transient private var fNodeIndex : Int;
	
	/** Returns the node index. */
	@:overload @:public public function getNodeIndex() : Int;
	
	/** Synchronizes the data (name and value) for fast nodes. */
	@:overload @:protected override private function synchronizeData() : Void;
	
	/**
	* Synchronizes the node's children with the internal structure.
	* Fluffing the children at once solves a lot of work to keep
	* the two structures in sync. The problem gets worse when
	* editing the tree -- this makes it a lot easier.
	*/
	@:overload @:protected override private function synchronizeChildren() : Void;
	
	
}
