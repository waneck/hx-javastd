package java.awt.datatransfer;
/*
* Copyright (c) 2000, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern interface FlavorTable extends java.awt.datatransfer.FlavorMap
{
	/**
	* Returns a <code>List</code> of <code>String</code> natives to which the
	* specified <code>DataFlavor</code> corresponds. The <code>List</code>
	* will be sorted from best native to worst. That is, the first native will
	* best reflect data in the specified flavor to the underlying native
	* platform. The returned <code>List</code> is a modifiable copy of this
	* <code>FlavorTable</code>'s internal data. Client code is free to modify
	* the <code>List</code> without affecting this object.
	*
	* @param flav the <code>DataFlavor</code> whose corresponding natives
	*        should be returned. If <code>null</code> is specified, all
	*        natives currently known to this <code>FlavorTable</code> are
	*        returned in a non-deterministic order.
	* @return a <code>java.util.List</code> of <code>java.lang.String</code>
	*         objects which are platform-specific representations of platform-
	*         specific data formats
	*/
	@:overload public function getNativesForFlavor(flav : java.awt.datatransfer.DataFlavor) : java.util.List<String>;
	
	/**
	* Returns a <code>List</code> of <code>DataFlavor</code>s to which the
	* specified <code>String</code> corresponds. The <code>List</code> will be
	* sorted from best <code>DataFlavor</code> to worst. That is, the first
	* <code>DataFlavor</code> will best reflect data in the specified
	* native to a Java application. The returned <code>List</code> is a
	* modifiable copy of this <code>FlavorTable</code>'s internal data.
	* Client code is free to modify the <code>List</code> without affecting
	* this object.
	*
	* @param nat the native whose corresponding <code>DataFlavor</code>s
	*        should be returned. If <code>null</code> is specified, all
	*        <code>DataFlavor</code>s currently known to this
	*        <code>FlavorTable</code> are returned in a non-deterministic
	*        order.
	* @return a <code>java.util.List</code> of <code>DataFlavor</code>
	*         objects into which platform-specific data in the specified,
	*         platform-specific native can be translated
	*/
	@:overload public function getFlavorsForNative(nat : String) : java.util.List<java.awt.datatransfer.DataFlavor>;
	
	
}
