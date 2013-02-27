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
extern class SearchResult extends javax.naming.Binding
{
	/**
	* Constructs a search result using the result's name, its bound object, and
	* its attributes.
	*<p>
	* <tt>getClassName()</tt> will return the class name of <tt>obj</tt>
	* (or null if <tt>obj</tt> is null) unless the class name has been
	* explicitly set using <tt>setClassName()</tt>.
	*
	* @param name The non-null name of the search item. It is relative
	*             to the <em>target context</em> of the search (which is
	* named by the first parameter of the <code>search()</code> method)
	*
	* @param obj  The object bound to name. Can be null.
	* @param attrs The attributes that were requested to be returned with
	* this search item. Cannot be null.
	* @see javax.naming.NameClassPair#setClassName
	* @see javax.naming.NameClassPair#getClassName
	*/
	@:overload public function new(name : String, obj : Dynamic, attrs : javax.naming.directory.Attributes) : Void;
	
	/**
	* Constructs a search result using the result's name, its bound object, and
	* its attributes, and whether the name is relative.
	*<p>
	* <tt>getClassName()</tt> will return the class name of <tt>obj</tt>
	* (or null if <tt>obj</tt> is null) unless the class name has been
	* explicitly set using <tt>setClassName()</tt>
	*
	* @param name The non-null name of the search item.
	* @param obj  The object bound to name. Can be null.
	* @param attrs The attributes that were requested to be returned with
	* this search item. Cannot be null.
	* @param isRelative true if <code>name</code> is relative
	*         to the target context of the search (which is named by
	*         the first parameter of the <code>search()</code> method);
	*         false if <code>name</code> is a URL string.
	* @see javax.naming.NameClassPair#setClassName
	* @see javax.naming.NameClassPair#getClassName
	*/
	@:overload public function new(name : String, obj : Dynamic, attrs : javax.naming.directory.Attributes, isRelative : Bool) : Void;
	
	/**
	* Constructs a search result using the result's name, its class name,
	* its bound object, and its attributes.
	*
	* @param name The non-null name of the search item. It is relative
	*             to the <em>target context</em> of the search (which is
	* named by the first parameter of the <code>search()</code> method)
	*
	* @param  className       The possibly null class name of the object
	*         bound to <tt>name</tt>. If null, the class name of <tt>obj</tt> is
	*         returned by <tt>getClassName()</tt>. If <tt>obj</tt> is also null,
	*         <tt>getClassName()</tt> will return null.
	* @param obj  The object bound to name. Can be null.
	* @param attrs The attributes that were requested to be returned with
	* this search item. Cannot be null.
	* @see javax.naming.NameClassPair#setClassName
	* @see javax.naming.NameClassPair#getClassName
	*/
	@:overload public function new(name : String, className : String, obj : Dynamic, attrs : javax.naming.directory.Attributes) : Void;
	
	/**
	* Constructs a search result using the result's name, its class name,
	* its bound object, its attributes, and whether the name is relative.
	*
	* @param name The non-null name of the search item.
	* @param  className       The possibly null class name of the object
	*         bound to <tt>name</tt>. If null, the class name of <tt>obj</tt> is
	*         returned by <tt>getClassName()</tt>. If <tt>obj</tt> is also null,
	*         <tt>getClassName()</tt> will return null.
	* @param obj  The object bound to name. Can be null.
	* @param attrs The attributes that were requested to be returned with
	* this search item. Cannot be null.
	* @param isRelative true if <code>name</code> is relative
	*         to the target context of the search (which is named by
	*         the first parameter of the <code>search()</code> method);
	*         false if <code>name</code> is a URL string.
	* @see javax.naming.NameClassPair#setClassName
	* @see javax.naming.NameClassPair#getClassName
	*/
	@:overload public function new(name : String, className : String, obj : Dynamic, attrs : javax.naming.directory.Attributes, isRelative : Bool) : Void;
	
	/**
	* Retrieves the attributes in this search result.
	*
	* @return The non-null attributes in this search result. Can be empty.
	* @see #setAttributes
	*/
	@:overload public function getAttributes() : javax.naming.directory.Attributes;
	
	/**
	* Sets the attributes of this search result to <code>attrs</code>.
	* @param attrs The non-null attributes to use. Can be empty.
	* @see #getAttributes
	*/
	@:overload public function setAttributes(attrs : javax.naming.directory.Attributes) : Void;
	
	/**
	* Generates the string representation of this SearchResult.
	* The string representation consists of the string representation
	* of the binding and the string representation of
	* this search result's attributes, separated by ':'.
	* The contents of this string is useful
	* for debugging and is not meant to be interpreted programmatically.
	*
	* @return The string representation of this SearchResult. Cannot be null.
	*/
	@:overload override public function toString() : String;
	
	
}
