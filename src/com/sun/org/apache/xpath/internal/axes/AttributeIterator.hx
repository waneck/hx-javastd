package com.sun.org.apache.xpath.internal.axes;
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
* $Id: AttributeIterator.java,v 1.2.4.1 2005/09/14 19:45:22 jeffsuttor Exp $
*/
extern class AttributeIterator extends com.sun.org.apache.xpath.internal.axes.ChildTestIterator
{
	/**
	* Get the next node via getFirstAttribute && getNextAttribute.
	*/
	@:overload @:protected override private function getNextNode() : Int;
	
	/**
	* Returns the axis being iterated, if it is known.
	*
	* @return Axis.CHILD, etc., or -1 if the axis is not known or is of multiple
	* types.
	*/
	@:overload @:public override public function getAxis() : Int;
	
	
}
