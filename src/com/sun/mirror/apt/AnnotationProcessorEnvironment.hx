package com.sun.mirror.apt;
/*
* Copyright (c) 2004, Oracle and/or its affiliates. All rights reserved.
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
* The environment encapsulating the state needed by an annotation processor.
* An annotation processing tool makes this environment available
* to all annotation processors.
*
* <p> When an annotation processing tool is invoked, it is given a
* set of type declarations on which to operate.  These
* are refered to as the <i>specified</i> types.
* The type declarations said to be <i>included</i> in this invocation
* consist of the specified types and any types nested within them.
*
* <p> {@link DeclarationFilter}
* provides a simple way to select just the items of interest
* when a method returns a collection of declarations.
*
* @deprecated All components of this API have been superseded by the
* standardized annotation processing API.  The replacement for the
* functionality of this interface is {@link
* javax.annotation.processing.ProcessingEnvironment}.
*
* @author Joseph D. Darcy
* @author Scott Seligman
* @since 1.5
*/
@:require(java5) extern interface AnnotationProcessorEnvironment
{
	/**
	* Returns the options passed to the annotation processing tool.
	* Options are returned in the form of a map from option name
	* (such as <tt>"-encoding"</tt>) to option value.
	* For an option with no value (such as <tt>"-help"</tt>), the
	* corresponding value in the map is <tt>null</tt>.
	*
	* <p> Options beginning with <tt>"-A"</tt> are <i>processor-specific.</i>
	* Such options are unrecognized by the tool, but intended to be used by
	* some annotation processor.
	*
	* @return the options passed to the tool
	*/
	@:overload public function getOptions() : java.util.Map<String, String>;
	
	/**
	* Returns the messager used to report errors, warnings, and other
	* notices.
	*
	* @return the messager
	*/
	@:overload public function getMessager() : com.sun.mirror.apt.Messager;
	
	/**
	* Returns the filer used to create new source, class, or auxiliary
	* files.
	*
	* @return the filer
	*/
	@:overload public function getFiler() : com.sun.mirror.apt.Filer;
	
	/**
	* Returns the declarations of the types specified when the
	* annotation processing tool was invoked.
	*
	* @return the types specified when the tool was invoked, or an
	* empty collection if there were none
	*/
	@:overload public function getSpecifiedTypeDeclarations() : java.util.Collection<com.sun.mirror.declaration.TypeDeclaration>;
	
	/**
	* Returns the declaration of a package given its fully qualified name.
	*
	* @param name  fully qualified package name, or "" for the unnamed package
	* @return the declaration of the named package, or null if it cannot
	* be found
	*/
	@:overload public function getPackage(name : String) : com.sun.mirror.declaration.PackageDeclaration;
	
	/**
	* Returns the declaration of a type given its fully qualified name.
	*
	* @param name  fully qualified type name
	* @return the declaration of the named type, or null if it cannot be
	* found
	*/
	@:overload public function getTypeDeclaration(name : String) : com.sun.mirror.declaration.TypeDeclaration;
	
	/**
	* A convenience method that returns the declarations of the types
	* {@linkplain AnnotationProcessorEnvironment <i>included</i>}
	* in this invocation of the annotation processing tool.
	*
	* @return the declarations of the types included in this invocation
	* of the tool, or an empty collection if there are none
	*/
	@:overload public function getTypeDeclarations() : java.util.Collection<com.sun.mirror.declaration.TypeDeclaration>;
	
	/**
	* Returns the declarations annotated with the given annotation type.
	* Only declarations of the types
	* {@linkplain AnnotationProcessorEnvironment <i>included</i>}
	* in this invocation of the annotation processing tool, or
	* declarations of members, parameters, or type parameters
	* declared within those, are returned.
	*
	* @param a  annotation type being requested
	* @return the declarations annotated with the given annotation type,
	* or an empty collection if there are none
	*/
	@:overload public function getDeclarationsAnnotatedWith(a : com.sun.mirror.declaration.AnnotationTypeDeclaration) : java.util.Collection<com.sun.mirror.declaration.Declaration>;
	
	/**
	* Returns an implementation of some utility methods for
	* operating on declarations.
	*
	* @return declaration utilities
	*/
	@:overload public function getDeclarationUtils() : com.sun.mirror.util.Declarations;
	
	/**
	* Returns an implementation of some utility methods for
	* operating on types.
	*
	* @return type utilities
	*/
	@:overload public function getTypeUtils() : com.sun.mirror.util.Types;
	
	/**
	* Add a listener.  If the listener is currently registered to listen,
	* adding it again will have no effect.
	*
	* @param listener The listener to add.
	* @throws NullPointerException if the listener is null
	*/
	@:overload public function addListener(listener : com.sun.mirror.apt.AnnotationProcessorListener) : Void;
	
	/**
	* Remove a listener.  If the listener is not currently listening,
	* the method call does nothing.
	*
	* @param listener The listener to remove.
	* @throws NullPointerException if the listener is null
	*/
	@:overload public function removeListener(listener : com.sun.mirror.apt.AnnotationProcessorListener) : Void;
	
	
}
