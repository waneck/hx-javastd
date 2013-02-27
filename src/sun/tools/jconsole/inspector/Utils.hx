package sun.tools.jconsole.inspector;
/*
* Copyright (c) 2004, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class Utils
{
	/**
	* This method returns the class matching the name className.
	* It's used to cater for the primitive types.
	*/
	@:overload public static function getClass(className : String) : Class<Dynamic>;
	
	/**
	* Check if the given collection is a uniform collection of the given type.
	*/
	@:overload public static function isUniformCollection(c : java.util.Collection<Dynamic>, e : Class<Dynamic>) : Bool;
	
	/**
	* Check if the given element denotes a supported array-friendly data
	* structure, i.e. a data structure jconsole can render as an array.
	*/
	@:overload public static function canBeRenderedAsArray(elem : Dynamic) : Bool;
	
	/**
	* Check if the given element is an array.
	*
	* Multidimensional arrays are not supported.
	*
	* Non-empty 1-dimensional arrays of CompositeData
	* and TabularData are not handled as arrays but as
	* tabular data.
	*/
	@:overload public static function isSupportedArray(elem : Dynamic) : Bool;
	
	/**
	* This method provides a readable classname if it's an array,
	* i.e. either the classname of the component type for arrays
	* of java reference types or the name of the primitive type
	* for arrays of java primitive types. Otherwise, it returns null.
	*/
	@:overload public static function getArrayClassName(name : String) : String;
	
	/**
	* This methods provides a readable classname. If the supplied name
	* parameter denotes an array this method returns either the classname
	* of the component type for arrays of java reference types or the name
	* of the primitive type for arrays of java primitive types followed by
	* n-times "[]" where 'n' denotes the arity of the array. Otherwise, if
	* the supplied name doesn't denote an array it returns the same classname.
	*/
	@:overload public static function getReadableClassName(name : String) : String;
	
	/**
	* This method tells whether the type is editable
	* (means can be created with a String or not)
	*/
	@:overload public static function isEditableType(type : String) : Bool;
	
	/**
	* This method inserts a default value for the standard java types,
	* else it inserts the text name of the expected class type.
	* It acts to give a clue as to the input type.
	*/
	@:overload public static function getDefaultValue(type : String) : String;
	
	/**
	* Try to create a Java object using a one-string-param constructor.
	*/
	@:overload public static function newStringConstructor(type : String, param : String) : Dynamic;
	
	/**
	* This method attempts to create an object of the given "type"
	* using the "value" parameter.
	* e.g. calling createObjectFromString("java.lang.Integer", "10")
	* will return an Integer object initialized to 10.
	*/
	@:overload public static function createObjectFromString(type : String, value : String) : Dynamic;
	
	/**
	* This method is responsible for converting the inputs given by the user
	* into a useful object array for passing into a parameter array.
	*/
	@:overload public static function getParameters(inputs : java.NativeArray<sun.tools.jconsole.inspector.XTextField>, params : java.NativeArray<String>) : java.NativeArray<Dynamic>;
	
	/**
	* If the exception is wrapped, unwrap it.
	*/
	@:overload public static function getActualException(e : java.lang.Throwable) : java.lang.Throwable;
	
	
}
@:native('sun$tools$jconsole$inspector$Utils$ReadOnlyTableCellEditor') extern class Utils_ReadOnlyTableCellEditor extends javax.swing.DefaultCellEditor
{
	@:overload public function new(tf : javax.swing.JTextField) : Void;
	
	
}
@:native('sun$tools$jconsole$inspector$Utils$EditFocusAdapter') extern class Utils_EditFocusAdapter extends java.awt.event.FocusAdapter
{
	@:overload public function new(editor : javax.swing.CellEditor) : Void;
	
	@:overload override public function focusLost(e : java.awt.event.FocusEvent) : Void;
	
	
}
@:native('sun$tools$jconsole$inspector$Utils$CopyKeyAdapter') extern class Utils_CopyKeyAdapter extends java.awt.event.KeyAdapter
{
	@:overload override public function keyPressed(e : java.awt.event.KeyEvent) : Void;
	
	@:overload override public function keyTyped(e : java.awt.event.KeyEvent) : Void;
	
	
}
