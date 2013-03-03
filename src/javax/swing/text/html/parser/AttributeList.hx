package javax.swing.text.html.parser;
/*
* Copyright (c) 1998, 2008, Oracle and/or its affiliates. All rights reserved.
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
/**
* This class defines the attributes of an SGML element
* as described in a DTD using the ATTLIST construct.
* An AttributeList can be obtained from the Element
* class using the getAttributes() method.
* <p>
* It is actually an element in a linked list. Use the
* getNext() method repeatedly to enumerate all the attributes
* of an element.
*
* @see         Element
* @author      Arthur Van Hoff
*
*/
extern class AttributeList implements javax.swing.text.html.parser.DTDConstants implements java.io.Serializable
{
	@:public public var name : String;
	
	@:public public var type : Int;
	
	@:public public var values : java.util.Vector<Dynamic>;
	
	@:public public var modifier : Int;
	
	@:public public var value : String;
	
	@:public public var next : javax.swing.text.html.parser.AttributeList;
	
	/**
	* Create an attribute list element.
	*/
	@:overload @:public public function new(name : String) : Void;
	
	/**
	* Create an attribute list element.
	*/
	@:overload @:public public function new(name : String, type : Int, modifier : Int, value : String, values : java.util.Vector<Dynamic>, next : javax.swing.text.html.parser.AttributeList) : Void;
	
	/**
	* @return attribute name
	*/
	@:overload @:public public function getName() : String;
	
	/**
	* @return attribute type
	* @see DTDConstants
	*/
	@:overload @:public public function getType() : Int;
	
	/**
	* @return attribute modifier
	* @see DTDConstants
	*/
	@:overload @:public public function getModifier() : Int;
	
	/**
	* @return possible attribute values
	*/
	@:overload @:public public function getValues() : java.util.Enumeration<Dynamic>;
	
	/**
	* @return default attribute value
	*/
	@:overload @:public public function getValue() : String;
	
	/**
	* @return the next attribute in the list
	*/
	@:overload @:public public function getNext() : javax.swing.text.html.parser.AttributeList;
	
	/**
	* @return string representation
	*/
	@:overload @:public public function toString() : String;
	
	@:overload @:public @:static public static function name2type(nm : String) : Int;
	
	@:overload @:public @:static public static function type2name(tp : Int) : String;
	
	
}
