package javax.accessibility;
/*
* Copyright (c) 1997, 2005, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
/**
* The AccessibleAction interface should be supported by any object
* that can perform one or more actions.  This interface
* provides the standard mechanism for an assistive technology to determine
* what those actions are as well as tell the object to perform them.
* Any object that can be manipulated should support this
* interface.  Applications can determine if an object supports the
* AccessibleAction interface by first obtaining its AccessibleContext (see
* {@link Accessible}) and then calling the {@link AccessibleContext#getAccessibleAction}
* method.  If the return value is not null, the object supports this interface.
*
* @see Accessible
* @see Accessible#getAccessibleContext
* @see AccessibleContext
* @see AccessibleContext#getAccessibleAction
*
* @author      Peter Korn
* @author      Hans Muller
* @author      Willie Walker
* @author      Lynn Monsanto
*/
extern interface AccessibleAction
{
	/**
	* Returns the number of accessible actions available in this object
	* If there are more than one, the first one is considered the "default"
	* action of the object.
	*
	* @return the zero-based number of Actions in this object
	*/
	@:overload public function getAccessibleActionCount() : Int;
	
	/**
	* Returns a description of the specified action of the object.
	*
	* @param i zero-based index of the actions
	* @return a String description of the action
	* @see #getAccessibleActionCount
	*/
	@:overload public function getAccessibleActionDescription(i : Int) : String;
	
	/**
	* Performs the specified Action on the object
	*
	* @param i zero-based index of actions
	* @return true if the action was performed; otherwise false.
	* @see #getAccessibleActionCount
	*/
	@:overload public function doAccessibleAction(i : Int) : Bool;
	
	
}