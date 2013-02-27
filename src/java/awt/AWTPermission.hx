package java.awt;
/*
* Copyright (c) 1997, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class AWTPermission extends java.security.BasicPermission
{
	/**
	* Creates a new <code>AWTPermission</code> with the specified name.
	* The name is the symbolic name of the <code>AWTPermission</code>,
	* such as "topLevelWindow", "systemClipboard", etc. An asterisk
	* may be used to indicate all AWT permissions.
	*
	* @param name the name of the AWTPermission
	*
	* @throws NullPointerException if <code>name</code> is <code>null</code>.
	* @throws IllegalArgumentException if <code>name</code> is empty.
	*/
	@:overload public function new(name : String) : Void;
	
	/**
	* Creates a new <code>AWTPermission</code> object with the specified name.
	* The name is the symbolic name of the <code>AWTPermission</code>, and the
	* actions string is currently unused and should be <code>null</code>.
	*
	* @param name the name of the <code>AWTPermission</code>
	* @param actions should be <code>null</code>
	*
	* @throws NullPointerException if <code>name</code> is <code>null</code>.
	* @throws IllegalArgumentException if <code>name</code> is empty.
	*/
	@:overload public function new(name : String, actions : String) : Void;
	
	
}
