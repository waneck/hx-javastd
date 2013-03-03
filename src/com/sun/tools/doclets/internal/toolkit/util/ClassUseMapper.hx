package com.sun.tools.doclets.internal.toolkit.util;
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
* Map all class uses for a given class.
*
* This code is not part of an API.
* It is implementation that is subject to change.
* Do not use it as an API
*
* @since 1.2
* @author Robert G. Field
*/
@:require(java2) extern class ClassUseMapper
{
	/**
	* Mapping of ClassDocs to set of PackageDoc used by that class.
	* Entries may be null.
	*/
	@:public public var classToPackage : java.util.Map<String, java.util.Set<com.sun.javadoc.PackageDoc>>;
	
	/**
	* Mapping of Annotations to set of PackageDoc that use the annotation.
	*/
	@:public public var classToPackageAnnotations : java.util.Map<String, java.util.List<com.sun.javadoc.PackageDoc>>;
	
	/**
	* Mapping of ClassDocs to set of ClassDoc used by that class.
	* Entries may be null.
	*/
	@:public public var classToClass : java.util.Map<String, java.util.Set<com.sun.javadoc.ClassDoc>>;
	
	/**
	* Mapping of ClassDocs to list of ClassDoc which are direct or
	* indirect subclasses of that class.
	* Entries may be null.
	*/
	@:public public var classToSubclass : java.util.Map<String, java.util.List<com.sun.javadoc.ClassDoc>>;
	
	/**
	* Mapping of ClassDocs to list of ClassDoc which are direct or
	* indirect subinterfaces of that interface.
	* Entries may be null.
	*/
	@:public public var classToSubinterface : java.util.Map<String, java.util.List<com.sun.javadoc.ClassDoc>>;
	
	/**
	* Mapping of ClassDocs to list of ClassDoc which implement
	* this interface.
	* Entries may be null.
	*/
	@:public public var classToImplementingClass : java.util.Map<String, java.util.List<com.sun.javadoc.ClassDoc>>;
	
	/**
	* Mapping of ClassDocs to list of FieldDoc declared as that class.
	* Entries may be null.
	*/
	@:public public var classToField : java.util.Map<String, java.util.List<com.sun.javadoc.FieldDoc>>;
	
	/**
	* Mapping of ClassDocs to list of MethodDoc returning that class.
	* Entries may be null.
	*/
	@:public public var classToMethodReturn : java.util.Map<String, java.util.List<com.sun.javadoc.MethodDoc>>;
	
	/**
	* Mapping of ClassDocs to list of MethodDoc having that class
	* as an arg.
	* Entries may be null.
	*/
	@:public public var classToMethodArgs : java.util.Map<String, java.util.List<com.sun.javadoc.ExecutableMemberDoc>>;
	
	/**
	* Mapping of ClassDocs to list of MethodDoc which throws that class.
	* Entries may be null.
	*/
	@:public public var classToMethodThrows : java.util.Map<String, java.util.List<com.sun.javadoc.ExecutableMemberDoc>>;
	
	/**
	* Mapping of ClassDocs to list of ConstructorDoc having that class
	* as an arg.
	* Entries may be null.
	*/
	@:public public var classToConstructorArgs : java.util.Map<String, java.util.List<com.sun.javadoc.ExecutableMemberDoc>>;
	
	/**
	* Mapping of ClassDocs to list of ConstructorDoc which throws that class.
	* Entries may be null.
	*/
	@:public public var classToConstructorThrows : java.util.Map<String, java.util.List<com.sun.javadoc.ExecutableMemberDoc>>;
	
	/**
	* The mapping of AnnotationTypeDocs to constructors that use them.
	*/
	@:public public var classToConstructorAnnotations : java.util.Map<String, java.util.List<com.sun.javadoc.ConstructorDoc>>;
	
	/**
	* The mapping of AnnotationTypeDocs to Constructor parameters that use them.
	*/
	@:public public var classToConstructorParamAnnotation : java.util.Map<String, java.util.List<com.sun.javadoc.ExecutableMemberDoc>>;
	
	/**
	* The mapping of ClassDocs to Constructor arguments that use them as type parameters.
	*/
	@:public public var classToConstructorDocArgTypeParam : java.util.Map<String, java.util.List<com.sun.javadoc.ExecutableMemberDoc>>;
	
	/**
	* The mapping of ClassDocs to ClassDocs that use them as type parameters.
	*/
	@:public public var classToClassTypeParam : java.util.Map<String, java.util.List<com.sun.javadoc.ClassDoc>>;
	
	/**
	* The mapping of AnnotationTypeDocs to ClassDocs that use them.
	*/
	@:public public var classToClassAnnotations : java.util.Map<String, java.util.List<com.sun.javadoc.ClassDoc>>;
	
	/**
	* The mapping of ClassDocs to ExecutableMemberDocs that use them as type parameters.
	*/
	@:public public var classToExecMemberDocTypeParam : java.util.Map<String, java.util.List<com.sun.javadoc.MethodDoc>>;
	
	/**
	* The mapping of ClassDocs to ExecutableMemberDocs arguments that use them as type parameters.
	*/
	@:public public var classToExecMemberDocArgTypeParam : java.util.Map<String, java.util.List<com.sun.javadoc.ExecutableMemberDoc>>;
	
	/**
	* The mapping of AnnotationTypeDocs to ExecutableMemberDocs that use them.
	*/
	@:public public var classToExecMemberDocAnnotations : java.util.Map<String, java.util.List<com.sun.javadoc.MethodDoc>>;
	
	/**
	* The mapping of ClassDocs to ExecutableMemberDocs that have return type
	* with type parameters of that class.
	*/
	@:public public var classToExecMemberDocReturnTypeParam : java.util.Map<String, java.util.List<com.sun.javadoc.MethodDoc>>;
	
	/**
	* The mapping of AnnotationTypeDocs to MethodDoc parameters that use them.
	*/
	@:public public var classToExecMemberDocParamAnnotation : java.util.Map<String, java.util.List<com.sun.javadoc.ExecutableMemberDoc>>;
	
	/**
	* The mapping of ClassDocs to FieldDocs that use them as type parameters.
	*/
	@:public public var classToFieldDocTypeParam : java.util.Map<String, java.util.List<com.sun.javadoc.FieldDoc>>;
	
	/**
	* The mapping of AnnotationTypeDocs to FieldDocs that use them.
	*/
	@:public public var annotationToFieldDoc : java.util.Map<String, java.util.List<com.sun.javadoc.FieldDoc>>;
	
	@:overload @:public public function new(root : com.sun.javadoc.RootDoc, classtree : com.sun.tools.doclets.internal.toolkit.util.ClassTree) : Void;
	
	
}
