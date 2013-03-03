package org.w3c.dom.bootstrap;
/*
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
* This file is available under and governed by the GNU General Public
* License version 2 only, as published by the Free Software Foundation.
* However, the following notice accompanied the original version of this
* file and, per its terms, should not be removed:
*
* Copyright (c) 2004 World Wide Web Consortium,
*
* (Massachusetts Institute of Technology, European Research Consortium for
* Informatics and Mathematics, Keio University). All Rights Reserved. This
* work is distributed under the W3C(r) Software License [1] in the hope that
* it will be useful, but WITHOUT ANY WARRANTY; without even the implied
* warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
*
* [1] http://www.w3.org/Consortium/Legal/2002/copyright-software-20021231
*/
extern class DOMImplementationRegistry
{
	/**
	* The system property to specify the
	* DOMImplementationSource class names.
	*/
	@:public @:static @:final public static var PROPERTY(default, null) : String;
	
	/**
	* Obtain a new instance of a <code>DOMImplementationRegistry</code>.
	*

	* The <code>DOMImplementationRegistry</code> is initialized by the
	* application or the implementation, depending on the context, by
	* first checking the value of the Java system property
	* <code>org.w3c.dom.DOMImplementationSourceList</code> and
	* the service provider whose contents are at
	* "<code>META_INF/services/org.w3c.dom.DOMImplementationSourceList</code>".
	* The value of this property is a white-space separated list of
	* names of availables classes implementing the
	* <code>DOMImplementationSource</code> interface. Each class listed
	* in the class name list is instantiated and any exceptions
	* encountered are thrown to the application.
	*
	* @return an initialized instance of DOMImplementationRegistry
	* @throws ClassNotFoundException
	*     If any specified class can not be found
	* @throws InstantiationException
	*     If any specified class is an interface or abstract class
	* @throws IllegalAccessException
	*     If the default constructor of a specified class is not accessible
	* @throws ClassCastException
	*     If any specified class does not implement
	* <code>DOMImplementationSource</code>
	*/
	@:overload @:public @:static public static function newInstance() : org.w3c.dom.bootstrap.DOMImplementationRegistry;
	
	/**
	* Return the first implementation that has the desired
	* features, or <code>null</code> if none is found.
	*
	* @param features
	*            A string that specifies which features are required. This is
	*            a space separated list in which each feature is specified by
	*            its name optionally followed by a space and a version number.
	*            This is something like: "XML 1.0 Traversal +Events 2.0"
	* @return An implementation that has the desired features,
	*         or <code>null</code> if none found.
	*/
	@:overload @:public public function getDOMImplementation(features : String) : org.w3c.dom.DOMImplementation;
	
	/**
	* Return a list of implementations that support the
	* desired features.
	*
	* @param features
	*            A string that specifies which features are required. This is
	*            a space separated list in which each feature is specified by
	*            its name optionally followed by a space and a version number.
	*            This is something like: "XML 1.0 Traversal +Events 2.0"
	* @return A list of DOMImplementations that support the desired features.
	*/
	@:overload @:public public function getDOMImplementationList(features : String) : org.w3c.dom.DOMImplementationList;
	
	/**
	* Register an implementation.
	*
	* @param s The source to be registered, may not be <code>null</code>
	*/
	@:overload @:public public function addSource(s : org.w3c.dom.DOMImplementationSource) : Void;
	
	
}
