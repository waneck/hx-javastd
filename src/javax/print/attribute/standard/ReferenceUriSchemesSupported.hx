package javax.print.attribute.standard;
/*
* Copyright (c) 2000, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class ReferenceUriSchemesSupported extends javax.print.attribute.EnumSyntax implements javax.print.attribute.Attribute
{
	/**
	* File Transfer Protocol (FTP).
	*/
	public static var FTP(default, null) : ReferenceUriSchemesSupported;
	
	/**
	* HyperText Transfer Protocol (HTTP).
	*/
	public static var HTTP(default, null) : ReferenceUriSchemesSupported;
	
	/**
	* Secure HyperText Transfer Protocol (HTTPS).
	*/
	public static var HTTPS(default, null) : ReferenceUriSchemesSupported;
	
	/**
	* Gopher Protocol.
	*/
	public static var GOPHER(default, null) : ReferenceUriSchemesSupported;
	
	/**
	* USENET news.
	*/
	public static var NEWS(default, null) : ReferenceUriSchemesSupported;
	
	/**
	* USENET news using Network News Transfer Protocol (NNTP).
	*/
	public static var NNTP(default, null) : ReferenceUriSchemesSupported;
	
	/**
	* Wide Area Information Server (WAIS) protocol.
	*/
	public static var WAIS(default, null) : ReferenceUriSchemesSupported;
	
	/**
	* Host-specific file names.
	*/
	public static var FILE(default, null) : ReferenceUriSchemesSupported;
	
	/**
	* Construct a new reference URI scheme enumeration value with the given
	* integer value.
	*
	* @param  value  Integer value.
	*/
	@:overload private function new(value : Int) : Void;
	
	/**
	* Returns the string table for class ReferenceUriSchemesSupported.
	*/
	@:overload override private function getStringTable() : java.NativeArray<String>;
	
	/**
	* Returns the enumeration value table for class
	* ReferenceUriSchemesSupported.
	*/
	@:overload override private function getEnumValueTable() : java.NativeArray<javax.print.attribute.EnumSyntax>;
	
	/**
	* Get the printing attribute class which is to be used as the "category"
	* for this printing attribute value.
	* <P>
	* For class ReferenceUriSchemesSupported and any vendor-defined
	* subclasses, the category is class ReferenceUriSchemesSupported itself.
	*
	* @return  Printing attribute class (category), an instance of class
	*          {@link java.lang.Class java.lang.Class}.
	*/
	@:overload @:final public function getCategory() : Class<javax.print.attribute.Attribute>;
	
	/**
	* Get the name of the category of which this attribute value is an
	* instance.
	* <P>
	* For class ReferenceUriSchemesSupported and any vendor-defined
	* subclasses, the category name is
	* <CODE>"reference-uri-schemes-supported"</CODE>.
	*
	* @return  Attribute category name.
	*/
	@:overload @:final public function getName() : String;
	
	
}
