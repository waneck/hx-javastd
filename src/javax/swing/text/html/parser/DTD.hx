package javax.swing.text.html.parser;
/*
* Copyright (c) 1998, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class DTD implements javax.swing.text.html.parser.DTDConstants
{
	/**
	* The representation of an SGML DTD.  DTD describes a document
	* syntax and is used in parsing of HTML documents.  It contains
	* a list of elements and their attributes as well as a list of
	* entities defined in the DTD.
	*
	* @see Element
	* @see AttributeList
	* @see ContentModel
	* @see Parser
	* @author Arthur van Hoff
	*/
	public var name : String;
	
	public var elements : java.util.Vector<javax.swing.text.html.parser.Element>;
	
	public var elementHash : java.util.Hashtable<String, javax.swing.text.html.parser.Element>;
	
	public var entityHash : java.util.Hashtable<Dynamic, javax.swing.text.html.parser.Entity>;
	
	public var pcdata(default, null) : javax.swing.text.html.parser.Element;
	
	public var html(default, null) : javax.swing.text.html.parser.Element;
	
	public var meta(default, null) : javax.swing.text.html.parser.Element;
	
	public var base(default, null) : javax.swing.text.html.parser.Element;
	
	public var isindex(default, null) : javax.swing.text.html.parser.Element;
	
	public var head(default, null) : javax.swing.text.html.parser.Element;
	
	public var body(default, null) : javax.swing.text.html.parser.Element;
	
	public var applet(default, null) : javax.swing.text.html.parser.Element;
	
	public var param(default, null) : javax.swing.text.html.parser.Element;
	
	public var p(default, null) : javax.swing.text.html.parser.Element;
	
	public var title(default, null) : javax.swing.text.html.parser.Element;
	
	public static var FILE_VERSION(default, null) : Int;
	
	/**
	* Creates a new DTD with the specified name.
	* @param name the name, as a <code>String</code> of the new DTD
	*/
	@:overload private function new(name : String) : Void;
	
	/**
	* Gets the name of the DTD.
	* @return the name of the DTD
	*/
	@:overload public function getName() : String;
	
	/**
	* Gets an entity by name.
	* @return the <code>Entity</code> corresponding to the
	*   <code>name</code> <code>String</code>
	*/
	@:overload public function getEntity(name : String) : javax.swing.text.html.parser.Entity;
	
	/**
	* Gets a character entity.
	* @return the <code>Entity</code> corresponding to the
	*    <code>ch</code> character
	*/
	@:overload public function getEntity(ch : Int) : javax.swing.text.html.parser.Entity;
	
	/**
	* Gets an element by name. A new element is
	* created if the element doesn't exist.
	*
	* @param name the requested <code>String</code>
	* @return the <code>Element</code> corresponding to
	*   <code>name</code>, which may be newly created
	*/
	@:overload public function getElement(name : String) : javax.swing.text.html.parser.Element;
	
	/**
	* Gets an element by index.
	*
	* @param index the requested index
	* @return the <code>Element</code> corresponding to
	*   <code>index</code>
	*/
	@:overload public function getElement(index : Int) : javax.swing.text.html.parser.Element;
	
	/**
	* Defines an entity.  If the <code>Entity</code> specified
	* by <code>name</code>, <code>type</code>, and <code>data</code>
	* exists, it is returned; otherwise a new <code>Entity</code>
	* is created and is returned.
	*
	* @param name the name of the <code>Entity</code> as a <code>String</code>
	* @param type the type of the <code>Entity</code>
	* @param data the <code>Entity</code>'s data
	* @return the <code>Entity</code> requested or a new <code>Entity</code>
	*   if not found
	*/
	@:overload public function defineEntity(name : String, type : Int, data : java.NativeArray<java.StdTypes.Char16>) : javax.swing.text.html.parser.Entity;
	
	/**
	* Returns the <code>Element</code> which matches the
	* specified parameters.  If one doesn't exist, a new
	* one is created and returned.
	*
	* @param name the name of the <code>Element</code>
	* @param type the type of the <code>Element</code>
	* @param omitStart <code>true</code> if start should be omitted
	* @param omitEnd  <code>true</code> if end should be omitted
	* @param content  the <code>ContentModel</code>
	* @param atts the <code>AttributeList</code> specifying the
	*    <code>Element</code>
	* @return the <code>Element</code> specified
	*/
	@:overload public function defineElement(name : String, type : Int, omitStart : Bool, omitEnd : Bool, content : javax.swing.text.html.parser.ContentModel, exclusions : java.util.BitSet, inclusions : java.util.BitSet, atts : javax.swing.text.html.parser.AttributeList) : javax.swing.text.html.parser.Element;
	
	/**
	* Defines attributes for an {@code Element}.
	*
	* @param name the name of the <code>Element</code>
	* @param atts the <code>AttributeList</code> specifying the
	*    <code>Element</code>
	*/
	@:overload public function defineAttributes(name : String, atts : javax.swing.text.html.parser.AttributeList) : Void;
	
	/**
	* Creates and returns a character <code>Entity</code>.
	* @param name the entity's name
	* @return the new character <code>Entity</code>
	*/
	@:overload public function defEntity(name : String, type : Int, ch : Int) : javax.swing.text.html.parser.Entity;
	
	/**
	* Creates and returns an <code>Entity</code>.
	* @param name the entity's name
	* @return the new <code>Entity</code>
	*/
	@:overload private function defEntity(name : String, type : Int, str : String) : javax.swing.text.html.parser.Entity;
	
	/**
	* Creates and returns an <code>Element</code>.
	* @param name the element's name
	* @return the new <code>Element</code>
	*/
	@:overload private function defElement(name : String, type : Int, omitStart : Bool, omitEnd : Bool, content : javax.swing.text.html.parser.ContentModel, exclusions : java.NativeArray<String>, inclusions : java.NativeArray<String>, atts : javax.swing.text.html.parser.AttributeList) : javax.swing.text.html.parser.Element;
	
	/**
	* Creates and returns an <code>AttributeList</code>.
	* @param name the attribute list's name
	* @return the new <code>AttributeList</code>
	*/
	@:overload private function defAttributeList(name : String, type : Int, modifier : Int, value : String, values : String, atts : javax.swing.text.html.parser.AttributeList) : javax.swing.text.html.parser.AttributeList;
	
	/**
	* Creates and returns a new content model.
	* @param type the type of the new content model
	* @return the new <code>ContentModel</code>
	*/
	@:overload private function defContentModel(type : Int, obj : Dynamic, next : javax.swing.text.html.parser.ContentModel) : javax.swing.text.html.parser.ContentModel;
	
	/**
	* Returns a string representation of this DTD.
	* @return the string representation of this DTD
	*/
	@:overload public function toString() : String;
	
	@:overload public static function putDTDHash(name : String, dtd : DTD) : Void;
	
	/**
	* Returns a DTD with the specified <code>name</code>.  If
	* a DTD with that name doesn't exist, one is created
	* and returned.  Any uppercase characters in the name
	* are converted to lowercase.
	*
	* @param name the name of the DTD
	* @return the DTD which corresponds to <code>name</code>
	*/
	@:overload public static function getDTD(name : String) : DTD;
	
	/**
	* Recreates a DTD from an archived format.
	* @param in  the <code>DataInputStream</code> to read from
	*/
	@:overload public function read(_in : java.io.DataInputStream) : Void;
	
	
}
