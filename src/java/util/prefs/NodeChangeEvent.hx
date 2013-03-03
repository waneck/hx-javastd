package java.util.prefs;
/*
* Copyright (c) 2000, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class NodeChangeEvent extends java.util.EventObject
{
	/**
	* Constructs a new <code>NodeChangeEvent</code> instance.
	*
	* @param parent  The parent of the node that was added or removed.
	* @param child   The node that was added or removed.
	*/
	@:overload @:public public function new(parent : java.util.prefs.Preferences, child : java.util.prefs.Preferences) : Void;
	
	/**
	* Returns the parent of the node that was added or removed.
	*
	* @return  The parent Preferences node whose child was added or removed
	*/
	@:overload @:public public function getParent() : java.util.prefs.Preferences;
	
	/**
	* Returns the node that was added or removed.
	*
	* @return  The node that was added or removed.
	*/
	@:overload @:public public function getChild() : java.util.prefs.Preferences;
	
	
}
