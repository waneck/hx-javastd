package javax.naming.directory;
/*
* Copyright (c) 1999, 2000, Oracle and/or its affiliates. All rights reserved.
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
extern class AttributeModificationException extends javax.naming.NamingException
{
	/**
	* Constructs a new instance of AttributeModificationException using
	* an explanation. All other fields are set to null.
	*
	* @param   explanation     Possibly null additional detail about this exception.
	* If null, this exception has no detail message.

	* @see java.lang.Throwable#getMessage
	*/
	@:overload @:public public function new(explanation : String) : Void;
	
	/**
	* Constructs a new instance of AttributeModificationException.
	* All fields are set to null.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Sets the unexecuted modification list to be e.
	* Items in the list must appear in the same order in which they were
	* originally supplied in DirContext.modifyAttributes().
	* The first item in the list is the first one that was not executed.
	* If this list is null, none of the operations originally submitted
	* to modifyAttributes() were executed.

	* @param e        The possibly null list of unexecuted modifications.
	* @see #getUnexecutedModifications
	*/
	@:overload @:public public function setUnexecutedModifications(e : java.NativeArray<javax.naming.directory.ModificationItem>) : Void;
	
	/**
	* Retrieves the unexecuted modification list.
	* Items in the list appear in the same order in which they were
	* originally supplied in DirContext.modifyAttributes().
	* The first item in the list is the first one that was not executed.
	* If this list is null, none of the operations originally submitted
	* to modifyAttributes() were executed.

	* @return The possibly null unexecuted modification list.
	* @see #setUnexecutedModifications
	*/
	@:overload @:public public function getUnexecutedModifications() : java.NativeArray<javax.naming.directory.ModificationItem>;
	
	/**
	* The string representation of this exception consists of
	* information about where the error occurred, and
	* the first unexecuted modification.
	* This string is meant for debugging and not mean to be interpreted
	* programmatically.
	* @return The non-null string representation of this exception.
	*/
	@:overload @:public override public function toString() : String;
	
	
}
