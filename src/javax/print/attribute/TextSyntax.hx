package javax.print.attribute;
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
extern class TextSyntax implements java.io.Serializable implements java.lang.Cloneable
{
	/**
	* Constructs a TextAttribute with the specified string and locale.
	*
	* @param  value   Text string.
	* @param  locale  Natural language of the text string. null
	* is interpreted to mean the default locale for as returned
	* by <code>Locale.getDefault()</code>
	*
	* @exception  NullPointerException
	*     (unchecked exception) Thrown if <CODE>value</CODE> is null.
	*/
	@:overload @:protected private function new(value : String, locale : java.util.Locale) : Void;
	
	/**
	* Returns this text attribute's text string.
	* @return the text string.
	*/
	@:overload @:public public function getValue() : String;
	
	/**
	* Returns this text attribute's text string's natural language (locale).
	* @return the locale
	*/
	@:overload @:public public function getLocale() : java.util.Locale;
	
	/**
	* Returns a hashcode for this text attribute.
	*
	* @return  A hashcode value for this object.
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Returns whether this text attribute is equivalent to the passed in
	* object. To be equivalent, all of the following conditions must be true:
	* <OL TYPE=1>
	* <LI>
	* <CODE>object</CODE> is not null.
	* <LI>
	* <CODE>object</CODE> is an instance of class TextSyntax.
	* <LI>
	* This text attribute's underlying string and <CODE>object</CODE>'s
	* underlying string are equal.
	* <LI>
	* This text attribute's locale and <CODE>object</CODE>'s locale are
	* equal.
	* </OL>
	*
	* @param  object  Object to compare to.
	*
	* @return  True if <CODE>object</CODE> is equivalent to this text
	*          attribute, false otherwise.
	*/
	@:overload @:public public function equals(object : Dynamic) : Bool;
	
	/**
	* Returns a String identifying this text attribute. The String is
	* the attribute's underlying text string.
	*
	* @return  A String identifying this object.
	*/
	@:overload @:public public function toString() : String;
	
	
}
