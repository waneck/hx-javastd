package com.sun.tools.doclets.formats.html;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class LinkInfoImpl extends com.sun.tools.doclets.internal.toolkit.util.links.LinkInfo
{
	/**
	* Indicate that the link appears in a class list.
	*/
	public static var ALL_CLASSES_FRAME(default, null) : Int;
	
	/**
	* Indicate that the link appears in a class documentation.
	*/
	public static var CONTEXT_CLASS(default, null) : Int;
	
	/**
	* Indicate that the link appears in member documentation.
	*/
	public static var CONTEXT_MEMBER(default, null) : Int;
	
	/**
	* Indicate that the link appears in class use documentation.
	*/
	public static var CONTEXT_CLASS_USE(default, null) : Int;
	
	/**
	* Indicate that the link appears in index documentation.
	*/
	public static var CONTEXT_INDEX(default, null) : Int;
	
	/**
	* Indicate that the link appears in constant value summary.
	*/
	public static var CONTEXT_CONSTANT_SUMMARY(default, null) : Int;
	
	/**
	* Indicate that the link appears in serialized form documentation.
	*/
	public static var CONTEXT_SERIALIZED_FORM(default, null) : Int;
	
	/**
	* Indicate that the link appears in serial member documentation.
	*/
	public static var CONTEXT_SERIAL_MEMBER(default, null) : Int;
	
	/**
	* Indicate that the link appears in package documentation.
	*/
	public static var CONTEXT_PACKAGE(default, null) : Int;
	
	/**
	* Indicate that the link appears in see tag documentation.
	*/
	public static var CONTEXT_SEE_TAG(default, null) : Int;
	
	/**
	* Indicate that the link appears in value tag documentation.
	*/
	public static var CONTEXT_VALUE_TAG(default, null) : Int;
	
	/**
	* Indicate that the link appears in tree documentation.
	*/
	public static var CONTEXT_TREE(default, null) : Int;
	
	/**
	* Indicate that the link appears in a class list.
	*/
	public static var PACKAGE_FRAME(default, null) : Int;
	
	/**
	* The header in the class documentation.
	*/
	public static var CONTEXT_CLASS_HEADER(default, null) : Int;
	
	/**
	* The signature in the class documentation.
	*/
	public static var CONTEXT_CLASS_SIGNATURE(default, null) : Int;
	
	/**
	* The return type of a method.
	*/
	public static var CONTEXT_RETURN_TYPE(default, null) : Int;
	
	/**
	* The return type of a method in a member summary.
	*/
	public static var CONTEXT_SUMMARY_RETURN_TYPE(default, null) : Int;
	
	/**
	* The type of a method/constructor parameter.
	*/
	public static var CONTEXT_EXECUTABLE_MEMBER_PARAM(default, null) : Int;
	
	/**
	* Super interface links.
	*/
	public static var CONTEXT_SUPER_INTERFACES(default, null) : Int;
	
	/**
	* Implemented interface links.
	*/
	public static var CONTEXT_IMPLEMENTED_INTERFACES(default, null) : Int;
	
	/**
	* Implemented class links.
	*/
	public static var CONTEXT_IMPLEMENTED_CLASSES(default, null) : Int;
	
	/**
	* Subinterface links.
	*/
	public static var CONTEXT_SUBINTERFACES(default, null) : Int;
	
	/**
	* Subclasses links.
	*/
	public static var CONTEXT_SUBCLASSES(default, null) : Int;
	
	/**
	* The signature in the class documentation (implements/extends portion).
	*/
	public static var CONTEXT_CLASS_SIGNATURE_PARENT_NAME(default, null) : Int;
	
	/**
	* The header for method documentation copied from parent.
	*/
	public static var CONTEXT_METHOD_DOC_COPY(default, null) : Int;
	
	/**
	* Method "specified by" link.
	*/
	public static var CONTEXT_METHOD_SPECIFIED_BY(default, null) : Int;
	
	/**
	* Method "overrides" link.
	*/
	public static var CONTEXT_METHOD_OVERRIDES(default, null) : Int;
	
	/**
	* Annotation link.
	*/
	public static var CONTEXT_ANNOTATION(default, null) : Int;
	
	/**
	* The header for field documentation copied from parent.
	*/
	public static var CONTEXT_FIELD_DOC_COPY(default, null) : Int;
	
	/**
	* The parent nodes int the class tree.
	*/
	public static var CONTEXT_CLASS_TREE_PARENT(default, null) : Int;
	
	/**
	* The type parameters of a method or constructor.
	*/
	public static var CONTEXT_MEMBER_TYPE_PARAMS(default, null) : Int;
	
	/**
	* Indicate that the link appears in class use documentation.
	*/
	public static var CONTEXT_CLASS_USE_HEADER(default, null) : Int;
	
	/**
	* The integer indicating the location of the link.
	*/
	public var context : Int;
	
	/**
	* The value of the marker #.
	*/
	public var where : String;
	
	/**
	* String style of text defined in style sheet.
	*/
	public var styleName : String;
	
	/**
	* The valueof the target.
	*/
	public var target : String;
	
	/**
	* Construct a LinkInfo object.
	*
	* @param context    the context of the link.
	* @param classDoc   the class to link to.
	* @param label      the label for the link.
	* @param target     the value of the target attribute.
	*/
	@:overload public function new(context : Int, classDoc : com.sun.javadoc.ClassDoc, label : String, target : String) : Void;
	
	/**
	* Construct a LinkInfo object.
	*
	* @param context    the context of the link.
	* @param classDoc   the class to link to.
	* @param where      the value of the marker #.
	* @param label      the label for the link.
	* @param isStrong       true if the link should be strong.
	* @param styleName  String style of text defined in style sheet.
	*/
	@:overload public function new(context : Int, classDoc : com.sun.javadoc.ClassDoc, where : String, label : String, isStrong : Bool, styleName : String) : Void;
	
	/**
	* Construct a LinkInfo object.
	*
	* @param context    the context of the link.
	* @param classDoc   the class to link to.
	* @param where      the value of the marker #.
	* @param label      the label for the link.
	* @param isStrong       true if the link should be strong.
	*/
	@:overload public function new(context : Int, classDoc : com.sun.javadoc.ClassDoc, where : String, label : String, isStrong : Bool) : Void;
	
	/**
	* Construct a LinkInfo object.
	*
	* @param classDoc   the class to link to.
	* @param label      the label for the link.
	*/
	@:overload public function new(classDoc : com.sun.javadoc.ClassDoc, label : String) : Void;
	
	/**
	* Construct a LinkInfo object.
	*
	* @param context               the context of the link.
	* @param executableMemberDoc   the member to link to.
	* @param isStrong                true if the link should be strong.
	*/
	@:overload public function new(context : Int, executableMemberDoc : com.sun.javadoc.ExecutableMemberDoc, isStrong : Bool) : Void;
	
	/**
	* Construct a LinkInfo object.
	*
	* @param context    the context of the link.
	* @param classDoc   the class to link to.
	* @param isStrong       true if the link should be strong.
	*/
	@:overload public function new(context : Int, classDoc : com.sun.javadoc.ClassDoc, isStrong : Bool) : Void;
	
	/**
	* Construct a LinkInfo object.
	*
	* @param context    the context of the link.
	* @param type       the class to link to.
	*/
	@:overload public function new(context : Int, type : com.sun.javadoc.Type) : Void;
	
	/**
	* Construct a LinkInfo object.
	*
	* @param context    the context of the link.
	* @param type       the class to link to.
	* @param isVarArg   true if this is a link to a var arg.
	*/
	@:overload public function new(context : Int, type : com.sun.javadoc.Type, isVarArg : Bool) : Void;
	
	/**
	* Construct a LinkInfo object.
	*
	* @param context    the context of the link.
	* @param type       the class to link to.
	* @param label      the label for the link.
	* @param isStrong     true if the link should be strong.
	*/
	@:overload public function new(context : Int, type : com.sun.javadoc.Type, label : String, isStrong : Bool) : Void;
	
	/**
	* Construct a LinkInfo object.
	*
	* @param context    the context of the link.
	* @param classDoc   the class to link to.
	* @param label      the label for the link.
	* @param isStrong       true if the link should be strong.
	*/
	@:overload public function new(context : Int, classDoc : com.sun.javadoc.ClassDoc, label : String, isStrong : Bool) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function getContext() : Int;
	
	/**
	* {@inheritDoc}
	*
	* This method sets the link attributes to the appropriate values
	* based on the context.
	*
	* @param c the context id to set.
	*/
	@:overload override public function setContext(c : Int) : Void;
	
	/**
	* Return true if this link is linkable and false if we can't link to the
	* desired place.
	*
	* @return true if this link is linkable and false if we can't link to the
	* desired place.
	*/
	@:overload override public function isLinkable() : Bool;
	
	
}
