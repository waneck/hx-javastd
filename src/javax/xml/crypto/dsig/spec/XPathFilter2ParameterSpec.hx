package javax.xml.crypto.dsig.spec;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
/*
* $Id: XPathFilter2ParameterSpec.java,v 1.7 2005/05/13 18:45:42 mullan Exp $
*/
extern class XPathFilter2ParameterSpec implements javax.xml.crypto.dsig.spec.TransformParameterSpec
{
	/**
	* Creates an <code>XPathFilter2ParameterSpec</code>.
	*
	* @param xPathList a list of one or more {@link XPathType} objects. The
	*    list is defensively copied to protect against subsequent modification.
	* @throws ClassCastException if <code>xPathList</code> contains any
	*    entries that are not of type {@link XPathType}
	* @throws IllegalArgumentException if <code>xPathList</code> is empty
	* @throws NullPointerException if <code>xPathList</code> is
	*    <code>null</code>
	*/
	@:overload public function new(xPathList : java.util.List<Dynamic>) : Void;
	
	/**
	* Returns a list of one or more {@link XPathType} objects.
	* <p>
	* This implementation returns an {@link Collections#unmodifiableList
	* unmodifiable list}.
	*
	* @return a <code>List</code> of <code>XPathType</code> objects
	*    (never <code>null</code> or empty)
	*/
	@:overload public function getXPathList() : java.util.List<Dynamic>;
	
	
}
