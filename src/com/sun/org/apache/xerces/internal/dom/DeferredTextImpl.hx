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
* Text nodes hold the non-markup, non-Entity content of
* an Element or Attribute.
* <P>
* When a document is first made available to the DOM, there is only
* one Text object for each block of adjacent plain-text. Users (ie,
* applications) may create multiple adjacent Texts during editing --
* see {@link org.w3c.dom.Element#normalize} for discussion.
* <P>
* Note that CDATASection is a subclass of Text. This is conceptually
* valid, since they're really just two different ways of quoting
* characters when they're written out as part of an XML stream.
*
* @xerces.internal
*
* @since  PR-DOM-Level-1-19980818.
*/
extern class DeferredTextImpl extends com.sun.org.apache.xerces.internal.dom.TextImpl implements com.sun.org.apache.xerces.internal.dom.DeferredNode
{
	/** Node index. */
	@:protected @:transient private var fNodeIndex : Int;
	
	/** Returns the node index. */
	@:overload @:public public function getNodeIndex() : Int;
	
	/** Synchronizes the underlying data. */
	@:overload @:protected override private function synchronizeData() : Void;
	
	
}
