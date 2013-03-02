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
* $Id: XPathType.java,v 1.4 2005/05/10 16:40:17 mullan Exp $
*/
extern class XPathType
{
	/**
	* Creates an <code>XPathType</code> instance with the specified XPath
	* expression and filter.
	*
	* @param expression the XPath expression to be evaluated
	* @param filter the filter operation ({@link Filter#INTERSECT},
	*    {@link Filter#SUBTRACT}, or {@link Filter#UNION})
	* @throws NullPointerException if <code>expression</code> or
	*    <code>filter</code> is <code>null</code>
	*/
	@:overload public function new(expression : String, filter : javax.xml.crypto.dsig.spec.XPathType.XPathType_Filter) : Void;
	
	/**
	* Creates an <code>XPathType</code> instance with the specified XPath
	* expression, filter, and namespace map. The map is copied to protect
	* against subsequent modification.
	*
	* @param expression the XPath expression to be evaluated
	* @param filter the filter operation ({@link Filter#INTERSECT},
	*    {@link Filter#SUBTRACT}, or {@link Filter#UNION})
	* @param namespaceMap the map of namespace prefixes. Each key is a
	*    namespace prefix <code>String</code> that maps to a corresponding
	*    namespace URI <code>String</code>.
	* @throws NullPointerException if <code>expression</code>,
	*    <code>filter</code> or <code>namespaceMap</code> are
	*    <code>null</code>
	* @throws ClassCastException if any of the map's keys or entries are
	*    not of type <code>String</code>
	*/
	@:overload public function new(expression : String, filter : javax.xml.crypto.dsig.spec.XPathType.XPathType_Filter, namespaceMap : java.util.Map<Dynamic, Dynamic>) : Void;
	
	/**
	* Returns the XPath expression to be evaluated.
	*
	* @return the XPath expression to be evaluated
	*/
	@:overload public function getExpression() : String;
	
	/**
	* Returns the filter operation.
	*
	* @return the filter operation
	*/
	@:overload public function getFilter() : javax.xml.crypto.dsig.spec.XPathType.XPathType_Filter;
	
	/**
	* Returns a map of namespace prefixes. Each key is a namespace prefix
	* <code>String</code> that maps to a corresponding namespace URI
	* <code>String</code>.
	* <p>
	* This implementation returns an {@link Collections#unmodifiableMap
	* unmodifiable map}.
	*
	* @return a <code>Map</code> of namespace prefixes to namespace URIs
	*    (may be empty, but never <code>null</code>)
	*/
	@:overload public function getNamespaceMap() : java.util.Map<Dynamic, Dynamic>;
	
	
}
/**
* Represents the filter set operation.
*/
@:native('javax$xml$crypto$dsig$spec$XPathType$Filter') extern class XPathType_Filter
{
	/**
	* Returns the string form of the operation.
	*
	* @return the string form of the operation
	*/
	@:overload public function toString() : String;
	
	/**
	* The intersect filter operation.
	*/
	public static var INTERSECT(default, null) : javax.xml.crypto.dsig.spec.XPathType.XPathType_Filter;
	
	/**
	* The subtract filter operation.
	*/
	public static var SUBTRACT(default, null) : javax.xml.crypto.dsig.spec.XPathType.XPathType_Filter;
	
	/**
	* The union filter operation.
	*/
	public static var UNION(default, null) : javax.xml.crypto.dsig.spec.XPathType.XPathType_Filter;
	
	
}
