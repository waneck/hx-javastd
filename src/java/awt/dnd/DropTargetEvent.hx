package java.awt.dnd;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class DropTargetEvent extends java.util.EventObject
{
	/**
	* Construct a <code>DropTargetEvent</code> object with
	* the specified <code>DropTargetContext</code>.
	* <P>
	* @param dtc The <code>DropTargetContext</code>
	* @throws NullPointerException if {@code dtc} equals {@code null}.
	* @see #getSource()
	* @see #getDropTargetContext()
	*/
	@:overload public function new(dtc : java.awt.dnd.DropTargetContext) : Void;
	
	/**
	* This method returns the <code>DropTargetContext</code>
	* associated with this <code>DropTargetEvent</code>.
	* <P>
	* @return the <code>DropTargetContext</code>
	*/
	@:overload public function getDropTargetContext() : java.awt.dnd.DropTargetContext;
	
	/**
	* The <code>DropTargetContext</code> associated with this
	* <code>DropTargetEvent</code>.
	*
	* @serial
	*/
	private var context : java.awt.dnd.DropTargetContext;
	
	
}
