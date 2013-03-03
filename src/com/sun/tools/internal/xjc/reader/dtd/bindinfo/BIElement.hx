package com.sun.tools.internal.xjc.reader.dtd.bindinfo;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class BIElement
{
	/**
	* Gets the source location where this element is declared.
	*/
	@:overload @:public public function getLocation() : org.xml.sax.Locator;
	
	/**
	* The bean representation for this element.
	*/
	@:public @:final public var clazz(default, null) : com.sun.tools.internal.xjc.model.CClassInfo;
	
	/** Gets the element name. */
	@:overload @:public public function name() : String;
	
	/**
	* Checks if the element type is "class".
	* If false, that means this element will be a value.
	*/
	@:overload @:public public function isClass() : Bool;
	
	/**
	* Checks if this element is designated as a root element.
	*/
	@:overload @:public public function isRoot() : Bool;
	
	/**
	* Gets the JClass object that represents this declaration.
	*
	* <p>
	* This method returns null if this declaration
	* is an element-property declaration.
	*/
	@:overload @:public public function getClassName() : String;
	
	/**
	* Creates constructor declarations for this element.
	*
	* <p>
	* This method should only be called by DTDReader <b>after</b>
	* the normalization has completed.
	*
	* @param   src
	*      The ClassItem object that corresponds to this declaration
	*/
	@:overload @:public public function declareConstructors(src : com.sun.tools.internal.xjc.model.CClassInfo) : Void;
	
	/**
	* Gets the conversion method for this element.
	*
	* <p>
	* This method can be called only when this element
	* declaration is designated as element-value.
	*
	* @return
	*        If the convert attribute is not specified, this
	*        method returns null.
	*/
	@:overload @:public public function getConversion() : com.sun.tools.internal.xjc.reader.dtd.bindinfo.BIConversion;
	
	/**
	* Resolves the conversion name to the conversion declaration.
	*
	* <p>
	* Element-local declarations are checked first.
	*
	* @return
	*        A non-null valid BIConversion object.
	*/
	@:overload @:public public function conversion(name : String) : com.sun.tools.internal.xjc.reader.dtd.bindinfo.BIConversion;
	
	/**
	* Iterates all content-property declarations (except 'rest').
	*/
	@:overload @:public public function getContents() : java.util.List<com.sun.tools.internal.xjc.reader.dtd.bindinfo.BIContent>;
	
	/**
	* Gets the attribute-property declaration, if any.
	*
	* @return
	*      null if attribute declaration was not given by that name.
	*/
	@:overload @:public public function attribute(name : String) : com.sun.tools.internal.xjc.reader.dtd.bindinfo.BIAttribute;
	
	/**
	* Gets the 'rest' content-property declaration, if any.
	* @return
	*      if there is no 'rest' declaration, return null.
	*/
	@:overload @:public public function getRest() : com.sun.tools.internal.xjc.reader.dtd.bindinfo.BIContent;
	
	/** Gets the location where this declaration is declared. */
	@:overload @:public public function getSourceLocation() : org.xml.sax.Locator;
	
	
}
