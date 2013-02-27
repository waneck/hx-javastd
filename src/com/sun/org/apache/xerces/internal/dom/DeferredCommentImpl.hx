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
* Represents an XML (or HTML) comment.
*
* @xerces.internal
*
* @since  PR-DOM-Level-1-19980818.
*/
extern class DeferredCommentImpl extends com.sun.org.apache.xerces.internal.dom.CommentImpl implements com.sun.org.apache.xerces.internal.dom.DeferredNode
{
	/** Node index. */
	@:transient private var fNodeIndex : Int;
	
	/** Returns the node index. */
	@:overload public function getNodeIndex() : Int;
	
	/** Synchronizes the data (name and value) for fast nodes. */
	@:overload override private function synchronizeData() : Void;
	
	
}
