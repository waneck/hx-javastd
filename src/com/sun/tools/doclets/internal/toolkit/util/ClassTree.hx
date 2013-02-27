package com.sun.tools.doclets.internal.toolkit.util;
/*
* Copyright (c) 1998, 2012, Oracle and/or its affiliates. All rights reserved.
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
* Build Class Hierarchy for all the Classes. This class builds the Class
* Tree and the Interface Tree separately.
*
* This code is not part of an API.
* It is implementation that is subject to change.
* Do not use it as an API
*
* @see java.util.HashMap
* @see java.util.List
* @see com.sun.javadoc.Type
* @see com.sun.javadoc.ClassDoc
* @author Atul M Dambalkar
*/
extern class ClassTree
{
	/**
	* Constructor. Build the Tree using the Root of this Javadoc run.
	*
	* @param configuration the configuration of the doclet.
	* @param noDeprecated Don't add deprecated classes in the class tree, if
	* true.
	*/
	@:overload public function new(configuration : com.sun.tools.doclets.internal.toolkit.Configuration, noDeprecated : Bool) : Void;
	
	/**
	* Constructor. Build the Tree using the Root of this Javadoc run.
	*
	* @param root Root of the Document.
	* @param configuration The curren configuration of the doclet.
	*/
	@:overload public function new(root : com.sun.javadoc.RootDoc, configuration : com.sun.tools.doclets.internal.toolkit.Configuration) : Void;
	
	/**
	* Constructor. Build the tree for the given array of classes.
	*
	* @param classes Array of classes.
	* @param configuration The curren configuration of the doclet.
	*/
	@:overload public function new(classes : java.NativeArray<com.sun.javadoc.ClassDoc>, configuration : com.sun.tools.doclets.internal.toolkit.Configuration) : Void;
	
	/**
	*  Return the sub-class list for the class passed.
	*
	* @param cd class whose sub-class list is required.
	*/
	@:overload public function subclasses(cd : com.sun.javadoc.ClassDoc) : java.util.List<com.sun.javadoc.ClassDoc>;
	
	/**
	*  Return the sub-interface list for the interface passed.
	*
	* @param cd interface whose sub-interface list is required.
	*/
	@:overload public function subinterfaces(cd : com.sun.javadoc.ClassDoc) : java.util.List<com.sun.javadoc.ClassDoc>;
	
	/**
	*  Return the list of classes which implement the interface passed.
	*
	* @param cd interface whose implementing-classes list is required.
	*/
	@:overload public function implementingclasses(cd : com.sun.javadoc.ClassDoc) : java.util.List<com.sun.javadoc.ClassDoc>;
	
	/**
	*  Return the sub-class/interface list for the class/interface passed.
	*
	* @param cd class/interface whose sub-class/interface list is required.
	* @param isEnum true if the subclasses should be forced to come from the
	* enum tree.
	*/
	@:overload public function subs(cd : com.sun.javadoc.ClassDoc, isEnum : Bool) : java.util.List<com.sun.javadoc.ClassDoc>;
	
	/**
	* Return a list of all direct or indirect, sub-classes and subinterfaces
	* of the ClassDoc argument.
	*
	* @param cd ClassDoc whose sub-classes or sub-interfaces are requested.
	* @param isEnum true if the subclasses should be forced to come from the
	* enum tree.
	*/
	@:overload public function allSubs(cd : com.sun.javadoc.ClassDoc, isEnum : Bool) : java.util.List<com.sun.javadoc.ClassDoc>;
	
	/**
	*  Return the base-classes list. This will have only one element namely
	*  thw classdoc for java.lang.Object, since this is the base class for all
	*  classes.
	*/
	@:overload public function baseclasses() : java.util.List<com.sun.javadoc.ClassDoc>;
	
	/**
	*  Return the list of base interfaces. This is the list of interfaces
	*  which do not have super-interface.
	*/
	@:overload public function baseinterfaces() : java.util.List<com.sun.javadoc.ClassDoc>;
	
	/**
	*  Return the list of base enums. This is the list of enums
	*  which do not have super-enums.
	*/
	@:overload public function baseEnums() : java.util.List<com.sun.javadoc.ClassDoc>;
	
	/**
	*  Return the list of base annotation types. This is the list of
	*  annotation types which do not have super-annotation types.
	*/
	@:overload public function baseAnnotationTypes() : java.util.List<com.sun.javadoc.ClassDoc>;
	
	
}
