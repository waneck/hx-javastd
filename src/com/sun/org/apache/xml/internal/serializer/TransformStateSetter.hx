package com.sun.org.apache.xml.internal.serializer;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: TransformStateSetter.java,v 1.2.4.1 2005/09/15 08:15:29 suresh_emailid Exp $
*/
extern interface TransformStateSetter
{
	/**
	* Set the current node.
	*
	* @param n The current node.
	*/
	@:overload public function setCurrentNode(n : org.w3c.dom.Node) : Void;
	
	/**
	* Reset the state on the given transformer object.
	*
	* @param transformer
	*/
	@:overload public function resetState(transformer : javax.xml.transform.Transformer) : Void;
	
	
}
