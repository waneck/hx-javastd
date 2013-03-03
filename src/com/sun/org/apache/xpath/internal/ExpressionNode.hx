package com.sun.org.apache.xpath.internal;
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
* $Id: ExpressionNode.java,v 1.1.2.1 2005/08/01 01:30:15 jeffsuttor Exp $
*/
extern interface ExpressionNode extends javax.xml.transform.SourceLocator
{
	/** This pair of methods are used to inform the node of its
	parent. */
	@:overload @:public public function exprSetParent(n : com.sun.org.apache.xpath.internal.ExpressionNode) : Void;
	
	@:overload @:public public function exprGetParent() : com.sun.org.apache.xpath.internal.ExpressionNode;
	
	/** This method tells the node to add its argument to the node's
	list of children.  */
	@:overload @:public public function exprAddChild(n : com.sun.org.apache.xpath.internal.ExpressionNode, i : Int) : Void;
	
	/** This method returns a child node.  The children are numbered
	from zero, left to right. */
	@:overload @:public public function exprGetChild(i : Int) : com.sun.org.apache.xpath.internal.ExpressionNode;
	
	/** Return the number of children the node has. */
	@:overload @:public public function exprGetNumChildren() : Int;
	
	
}
