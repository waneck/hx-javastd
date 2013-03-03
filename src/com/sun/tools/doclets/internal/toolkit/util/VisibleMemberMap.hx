package com.sun.tools.doclets.internal.toolkit.util;
/*
* Copyright (c) 1999, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class VisibleMemberMap
{
	@:public @:static @:final public static var INNERCLASSES(default, null) : Int;
	
	@:public @:static @:final public static var ENUM_CONSTANTS(default, null) : Int;
	
	@:public @:static @:final public static var FIELDS(default, null) : Int;
	
	@:public @:static @:final public static var CONSTRUCTORS(default, null) : Int;
	
	@:public @:static @:final public static var METHODS(default, null) : Int;
	
	@:public @:static @:final public static var ANNOTATION_TYPE_MEMBER_OPTIONAL(default, null) : Int;
	
	@:public @:static @:final public static var ANNOTATION_TYPE_MEMBER_REQUIRED(default, null) : Int;
	
	@:public @:static @:final public static var PROPERTIES(default, null) : Int;
	
	/**
	* The total number of member types is {@value}.
	*/
	@:public @:static @:final public static var NUM_MEMBER_TYPES(default, null) : Int;
	
	@:public @:static @:final public static var STARTLEVEL(default, null) : String;
	
	/**
	* Construct a VisibleMemberMap of the given type for the given
	* class.  If nodepr is true, exclude the deprecated members from
	* the map.
	*
	* @param classdoc the class whose members are being mapped.
	* @param kind the kind of member that is being mapped.
	* @param nodepr if true, exclude the deprecated members from the map.
	*/
	@:overload @:public public function new(classdoc : com.sun.javadoc.ClassDoc, kind : Int, nodepr : Bool) : Void;
	
	/**
	* Return the list of visible classes in this map.
	*
	* @return the list of visible classes in this map.
	*/
	@:overload @:public public function getVisibleClassesList() : java.util.List<com.sun.javadoc.ClassDoc>;
	
	/**
	* Returns the property field documentation belonging to the given member.
	* @param ped the member for which the property documentation is needed.
	* @return the property field documentation, null if there is none.
	*/
	@:overload @:public public function getPropertyMemberDoc(ped : com.sun.javadoc.ProgramElementDoc) : com.sun.javadoc.ProgramElementDoc;
	
	/**
	* Returns the getter documentation belonging to the given property method.
	* @param propertyMethod the method for which the getter is needed.
	* @return the getter documentation, null if there is none.
	*/
	@:overload @:public public function getGetterForProperty(propertyMethod : com.sun.javadoc.ProgramElementDoc) : com.sun.javadoc.ProgramElementDoc;
	
	/**
	* Returns the setter documentation belonging to the given property method.
	* @param propertyMethod the method for which the setter is needed.
	* @return the setter documentation, null if there is none.
	*/
	@:overload @:public public function getSetterForProperty(propertyMethod : com.sun.javadoc.ProgramElementDoc) : com.sun.javadoc.ProgramElementDoc;
	
	/**
	* Return the visible members of the class being mapped.  Also append at the
	* end of the list members that are inherited by inaccessible parents. We
	* document these members in the child because the parent is not documented.
	*
	* @param configuation the current configuration of the doclet.
	*/
	@:overload @:public public function getLeafClassMembers(configuration : com.sun.tools.doclets.internal.toolkit.Configuration) : java.util.List<com.sun.javadoc.ProgramElementDoc>;
	
	/**
	* Retrn the list of members for the given class.
	*
	* @param cd the class to retrieve the list of visible members for.
	*
	* @return the list of members for the given class.
	*/
	@:overload @:public public function getMembersFor(cd : com.sun.javadoc.ClassDoc) : java.util.List<com.sun.javadoc.ProgramElementDoc>;
	
	/**
	* Return true if this map has no visible members.
	*
	* @return true if this map has no visible members.
	*/
	@:overload @:public public function noVisibleMembers() : Bool;
	
	
}
/**
* Represents a class member.  We should be able to just use a
* ProgramElementDoc instead of this class, but that doesn't take
* type variables in consideration when comparing.
*/
@:native('com$sun$tools$doclets$internal$toolkit$util$VisibleMemberMap$ClassMember') @:internal extern class VisibleMemberMap_ClassMember
{
	@:overload @:public public function new(programElementDoc : com.sun.javadoc.ProgramElementDoc) : Void;
	
	@:overload @:public public function addMember(programElementDoc : com.sun.javadoc.ProgramElementDoc) : Void;
	
	@:overload @:public public function isEqual(member : com.sun.javadoc.MethodDoc) : Bool;
	
	
}
/**
* A data structure that represents the class members for
* a visible class.
*/
@:native('com$sun$tools$doclets$internal$toolkit$util$VisibleMemberMap$ClassMembers') @:internal extern class VisibleMemberMap_ClassMembers
{
	/**
	* Return list of inherited members from mapping class.
	*
	* @return List Inherited members.
	*/
	@:overload @:public public function getMembers() : java.util.List<com.sun.javadoc.ProgramElementDoc>;
	
	
}
@:native('com$sun$tools$doclets$internal$toolkit$util$VisibleMemberMap$GetterSetter') @:internal extern class VisibleMemberMap_GetterSetter
{
	@:overload @:public public function new(getter : com.sun.javadoc.ProgramElementDoc, setter : com.sun.javadoc.ProgramElementDoc) : Void;
	
	@:overload @:public public function getGetter() : com.sun.javadoc.ProgramElementDoc;
	
	@:overload @:public public function getSetter() : com.sun.javadoc.ProgramElementDoc;
	
	
}
