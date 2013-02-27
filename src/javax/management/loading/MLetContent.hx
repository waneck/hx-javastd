package javax.management.loading;
/*
* Copyright (c) 1999, 2006, Oracle and/or its affiliates. All rights reserved.
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
//// java import
extern class MLetContent
{
	/**
	* Creates an <CODE>MLet</CODE> instance initialized with attributes read
	* from an <CODE>MLET</CODE> tag in an MLet text file.
	*
	* @param url The URL of the MLet text file containing the
	* <CODE>MLET</CODE> tag.
	* @param attributes A map of the attributes of the <CODE>MLET</CODE> tag.
	* The keys in this map are the attribute names in lowercase, for
	* example <code>codebase</code>.  The values are the associated attribute
	* values.
	* @param types A list of the TYPE attributes that appeared in nested
	* &lt;PARAM&gt; tags.
	* @param values A list of the VALUE attributes that appeared in nested
	* &lt;PARAM&gt; tags.
	*/
	@:overload public function new(url : java.net.URL, attributes : java.util.Map<String, String>, types : java.util.List<String>, values : java.util.List<String>) : Void;
	
	/**
	* Gets the attributes of the <CODE>MLET</CODE> tag.  The keys in
	* the returned map are the attribute names in lowercase, for
	* example <code>codebase</code>.  The values are the associated
	* attribute values.
	* @return A map of the attributes of the <CODE>MLET</CODE> tag
	* and their values.
	*/
	@:overload public function getAttributes() : java.util.Map<String, String>;
	
	/**
	* Gets the MLet text file's base URL.
	* @return The MLet text file's base URL.
	*/
	@:overload public function getDocumentBase() : java.net.URL;
	
	/**
	* Gets the code base URL.
	* @return The code base URL.
	*/
	@:overload public function getCodeBase() : java.net.URL;
	
	/**
	* Gets the list of <CODE>.jar</CODE> files specified by the <CODE>ARCHIVE</CODE>
	* attribute of the <CODE>MLET</CODE> tag.
	* @return A comma-separated list of <CODE>.jar</CODE> file names.
	*/
	@:overload public function getJarFiles() : String;
	
	/**
	* Gets the value of the <CODE>CODE</CODE>
	* attribute of the <CODE>MLET</CODE> tag.
	* @return The value of the <CODE>CODE</CODE>
	* attribute of the <CODE>MLET</CODE> tag.
	*/
	@:overload public function getCode() : String;
	
	/**
	* Gets the value of the <CODE>OBJECT</CODE>
	* attribute of the <CODE>MLET</CODE> tag.
	* @return The value of the <CODE>OBJECT</CODE>
	* attribute of the <CODE>MLET</CODE> tag.
	*/
	@:overload public function getSerializedObject() : String;
	
	/**
	* Gets the value of the <CODE>NAME</CODE>
	* attribute of the <CODE>MLET</CODE> tag.
	* @return The value of the <CODE>NAME</CODE>
	* attribute of the <CODE>MLET</CODE> tag.
	*/
	@:overload public function getName() : String;
	
	/**
	* Gets the value of the <CODE>VERSION</CODE>
	* attribute of the <CODE>MLET</CODE> tag.
	* @return The value of the <CODE>VERSION</CODE>
	* attribute of the <CODE>MLET</CODE> tag.
	*/
	@:overload public function getVersion() : String;
	
	/**
	* Gets the list of values of the <code>TYPE</code> attribute in
	* each nested &lt;PARAM&gt; tag within the <code>MLET</code>
	* tag.
	* @return the list of types.
	*/
	@:overload public function getParameterTypes() : java.util.List<String>;
	
	/**
	* Gets the list of values of the <code>VALUE</code> attribute in
	* each nested &lt;PARAM&gt; tag within the <code>MLET</code>
	* tag.
	* @return the list of values.
	*/
	@:overload public function getParameterValues() : java.util.List<String>;
	
	
}
