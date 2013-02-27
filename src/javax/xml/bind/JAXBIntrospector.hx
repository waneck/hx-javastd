package javax.xml.bind;
/*
* Copyright (c) 2004, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class JAXBIntrospector
{
	/**
	* <p>Return true iff <code>object</code> represents a JAXB element.</p>
	* <p>Parameter <code>object</code> is a JAXB element for following cases:
	* <ol>
	*   <li>It is an instance of <code>javax.xml.bind.JAXBElement</code>.</li>
	*   <li>The class of <code>object</code> is annotated with
	*       <code>&#64XmlRootElement</code>.
	*   </li>
	* </ol>
	*
	* @see #getElementName(Object)
	*/
	@:overload @:abstract public function isElement(object : Dynamic) : Bool;
	
	/**
	* <p>Get xml element qname for <code>jaxbElement</code>.</p>
	*
	* @param jaxbElement is an object that {@link #isElement(Object)} returned true.
	*
	* @return xml element qname associated with jaxbElement;
	*         null if <code>jaxbElement</code> is not a JAXB Element.
	*/
	@:overload @:abstract public function getElementName(jaxbElement : Dynamic) : javax.xml.namespace.QName;
	
	/**
	* <p>Get the element value of a JAXB element.</p>
	*
	* <p>Convenience method to abstract whether working with either
	*    a javax.xml.bind.JAXBElement instance or an instance of
	*    <tt>&#64XmlRootElement</tt> annotated Java class.</p>
	*
	* @param jaxbElement  object that #isElement(Object) returns true.
	*
	* @return The element value of the <code>jaxbElement</code>.
	*/
	@:overload public static function getValue(jaxbElement : Dynamic) : Dynamic;
	
	
}
