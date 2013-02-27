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
* $Id: VariableStack.java,v 1.2.4.1 2005/09/10 18:16:22 jeffsuttor Exp $
*/
extern class VariableStack implements java.lang.Cloneable
{
	/**
	* limitation for 1K
	*/
	public static var CLEARLIMITATION(default, null) : Int;
	
	/**
	* Constructor for a variable stack.
	*/
	@:overload public function new() : Void;
	
	/**
	* Returns a clone of this variable stack.
	*
	* @return  a clone of this variable stack.
	*
	* @throws CloneNotSupportedException
	*/
	@:overload @:synchronized public function clone() : Dynamic;
	
	/**
	* Get the element at the given index, regardless of stackframe.
	*
	* @param i index from zero.
	*
	* @return The item at the given index.
	*/
	@:overload public function elementAt(i : Int) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	* Get size of the stack.
	*
	* @return the total size of the execution stack.
	*/
	@:overload public function size() : Int;
	
	/**
	* Reset the stack to a start position.
	*
	* @return the total size of the execution stack.
	*/
	@:overload public function reset() : Void;
	
	/**
	* Set the current stack frame.
	*
	* @param sf The new stack frame position.
	*/
	@:overload public function setStackFrame(sf : Int) : Void;
	
	/**
	* Get the position from where the search should start,
	* which is either the searchStart property, or the top
	* of the stack if that value is -1.
	*
	* @return The current stack frame position.
	*/
	@:overload public function getStackFrame() : Int;
	
	/**
	* Allocates memory (called a stackframe) on the stack; used to store
	* local variables and parameter arguments.
	*
	* <p>I use the link/unlink concept because of distant
	* <a href="http://math.millikin.edu/mprogers/Courses/currentCourses/CS481-ComputerArchitecture/cs481.Motorola68000.html">
	* Motorola 68000 assembler</a> memories.</p>
	*
	* @param size The size of the stack frame allocation.  This ammount should
	* normally be the maximum number of variables that you can have allocated
	* at one time in the new stack frame.
	*
	* @return The bottom of the stack frame, from where local variable addressing
	* should start from.
	*/
	@:overload public function link(size : Int) : Int;
	
	/**
	* Free up the stack frame that was last allocated with
	* {@link #link(int size)}.
	*/
	@:overload public function unlink() : Void;
	
	/**
	* Free up the stack frame that was last allocated with
	* {@link #link(int size)}.
	* @param currentFrame The current frame to set to
	* after the unlink.
	*/
	@:overload public function unlink(currentFrame : Int) : Void;
	
	/**
	* Set a local variable or parameter in the current stack frame.
	*
	*
	* @param index Local variable index relative to the current stack
	* frame bottom.
	*
	* @param val The value of the variable that is being set.
	*/
	@:overload public function setLocalVariable(index : Int, val : com.sun.org.apache.xpath.internal.objects.XObject) : Void;
	
	/**
	* Set a local variable or parameter in the specified stack frame.
	*
	*
	* @param index Local variable index relative to the current stack
	* frame bottom.
	* NEEDSDOC @param stackFrame
	*
	* @param val The value of the variable that is being set.
	*/
	@:overload public function setLocalVariable(index : Int, val : com.sun.org.apache.xpath.internal.objects.XObject, stackFrame : Int) : Void;
	
	/**
	* Get a local variable or parameter in the current stack frame.
	*
	*
	* @param xctxt The XPath context, which must be passed in order to
	* lazy evaluate variables.
	*
	* @param index Local variable index relative to the current stack
	* frame bottom.
	*
	* @return The value of the variable.
	*
	* @throws TransformerException
	*/
	@:overload public function getLocalVariable(xctxt : com.sun.org.apache.xpath.internal.XPathContext, index : Int) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	* Get a local variable or parameter in the current stack frame.
	*
	*
	* @param index Local variable index relative to the given
	* frame bottom.
	* NEEDSDOC @param frame
	*
	* @return The value of the variable.
	*
	* @throws TransformerException
	*/
	@:overload public function getLocalVariable(index : Int, frame : Int) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	* Get a local variable or parameter in the current stack frame.
	*
	*
	* @param xctxt The XPath context, which must be passed in order to
	* lazy evaluate variables.
	*
	* @param index Local variable index relative to the current stack
	* frame bottom.
	*
	* @return The value of the variable.
	*
	* @throws TransformerException
	*/
	@:overload public function getLocalVariable(xctxt : com.sun.org.apache.xpath.internal.XPathContext, index : Int, destructiveOK : Bool) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	* Tell if a local variable has been set or not.
	*
	* @param index Local variable index relative to the current stack
	* frame bottom.
	*
	* @return true if the value at the index is not null.
	*
	* @throws TransformerException
	*/
	@:overload public function isLocalSet(index : Int) : Bool;
	
	/**
	* Use this to clear the variables in a section of the stack.  This is
	* used to clear the parameter section of the stack, so that default param
	* values can tell if they've already been set.  It is important to note that
	* this function has a 1K limitation.
	*
	* @param start The start position, relative to the current local stack frame.
	* @param len The number of slots to be cleared.
	*/
	@:overload public function clearLocalSlots(start : Int, len : Int) : Void;
	
	/**
	* Set a global variable or parameter in the global stack frame.
	*
	*
	* @param index Local variable index relative to the global stack frame
	* bottom.
	*
	* @param val The value of the variable that is being set.
	*/
	@:overload public function setGlobalVariable(index : Int, val : com.sun.org.apache.xpath.internal.objects.XObject) : Void;
	
	/**
	* Get a global variable or parameter from the global stack frame.
	*
	*
	* @param xctxt The XPath context, which must be passed in order to
	* lazy evaluate variables.
	*
	* @param index Global variable index relative to the global stack
	* frame bottom.
	*
	* @return The value of the variable.
	*
	* @throws TransformerException
	*/
	@:overload public function getGlobalVariable(xctxt : com.sun.org.apache.xpath.internal.XPathContext, index : Int) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	* Get a global variable or parameter from the global stack frame.
	*
	*
	* @param xctxt The XPath context, which must be passed in order to
	* lazy evaluate variables.
	*
	* @param index Global variable index relative to the global stack
	* frame bottom.
	*
	* @return The value of the variable.
	*
	* @throws TransformerException
	*/
	@:overload public function getGlobalVariable(xctxt : com.sun.org.apache.xpath.internal.XPathContext, index : Int, destructiveOK : Bool) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	* Get a variable based on it's qualified name.
	* This is for external use only.
	*
	* @param xctxt The XPath context, which must be passed in order to
	* lazy evaluate variables.
	*
	* @param qname The qualified name of the variable.
	*
	* @return The evaluated value of the variable.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload public function getVariableOrParam(xctxt : com.sun.org.apache.xpath.internal.XPathContext, qname : com.sun.org.apache.xml.internal.utils.QName) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	
}
