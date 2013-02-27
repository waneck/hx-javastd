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
extern class CommentImpl extends com.sun.org.apache.xerces.internal.dom.CharacterDataImpl implements org.w3c.dom.CharacterData implements org.w3c.dom.Comment
{
	/** Factory constructor. */
	@:overload public function new(ownerDoc : com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl, data : String) : Void;
	
	/**
	* A short integer indicating what type of node this is. The named
	* constants for this value are defined in the org.w3c.dom.Node interface.
	*/
	@:overload override public function getNodeType() : java.StdTypes.Int16;
	
	/** Returns the node name. */
	@:overload override public function getNodeName() : String;
	
	
}
