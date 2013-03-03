package com.sun.tools.doclets.internal.toolkit.builders;
/*
* Copyright (c) 2003, 2012, Oracle and/or its affiliates. All rights reserved.
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
* The factory for constructing builders.
*
* This code is not part of an API.
* It is implementation that is subject to change.
* Do not use it as an API
*
* @author Jamie Ho
* @since 1.4
*/
@:require(java4) extern class BuilderFactory
{
	/**
	* Construct a builder factory using the given configuration.
	* @param configuration the configuration for the current doclet
	* being executed.
	*/
	@:overload @:public public function new(configuration : com.sun.tools.doclets.internal.toolkit.Configuration) : Void;
	
	/**
	* Return the builder that builds the constant summary.
	* @return the builder that builds the constant summary.
	*/
	@:overload @:public public function getConstantsSummaryBuider() : com.sun.tools.doclets.internal.toolkit.builders.AbstractBuilder;
	
	/**
	* Return the builder that builds the package summary.
	*
	* @param pkg the package being documented.
	* @param prevPkg the previous package being documented.
	* @param nextPkg the next package being documented.
	* @return the builder that builds the constant summary.
	*/
	@:overload @:public public function getPackageSummaryBuilder(pkg : com.sun.javadoc.PackageDoc, prevPkg : com.sun.javadoc.PackageDoc, nextPkg : com.sun.javadoc.PackageDoc) : com.sun.tools.doclets.internal.toolkit.builders.AbstractBuilder;
	
	/**
	* Return the builder for the class.
	*
	* @param classDoc the class being documented.
	* @param prevClass the previous class that was documented.
	* @param nextClass the next class being documented.
	* @param classTree the class tree.
	* @return the writer for the class.  Return null if this
	* writer is not supported by the doclet.
	*/
	@:overload @:public public function getClassBuilder(classDoc : com.sun.javadoc.ClassDoc, prevClass : com.sun.javadoc.ClassDoc, nextClass : com.sun.javadoc.ClassDoc, classTree : com.sun.tools.doclets.internal.toolkit.util.ClassTree) : com.sun.tools.doclets.internal.toolkit.builders.AbstractBuilder;
	
	/**
	* Return the builder for the annotation type.
	*
	* @param annotationType the annotation type being documented.
	* @param prevType the previous type that was documented.
	* @param nextType the next type being documented.
	* @return the writer for the annotation type.  Return null if this
	* writer is not supported by the doclet.
	*/
	@:overload @:public public function getAnnotationTypeBuilder(annotationType : com.sun.javadoc.AnnotationTypeDoc, prevType : com.sun.javadoc.Type, nextType : com.sun.javadoc.Type) : com.sun.tools.doclets.internal.toolkit.builders.AbstractBuilder;
	
	/**
	* Return an instance of the method builder for the given class.
	*
	* @return an instance of the method builder for the given class.
	*/
	@:overload @:public public function getMethodBuilder(classWriter : com.sun.tools.doclets.internal.toolkit.ClassWriter) : com.sun.tools.doclets.internal.toolkit.builders.AbstractBuilder;
	
	/**
	* Return an instance of the annotation type member builder for the given
	* class.
	*
	* @return an instance of the annotation type memebr builder for the given
	*         annotation type.
	*/
	@:overload @:public public function getAnnotationTypeOptionalMemberBuilder(annotationTypeWriter : com.sun.tools.doclets.internal.toolkit.AnnotationTypeWriter) : com.sun.tools.doclets.internal.toolkit.builders.AbstractBuilder;
	
	/**
	* Return an instance of the annotation type member builder for the given
	* class.
	*
	* @return an instance of the annotation type memebr builder for the given
	*         annotation type.
	*/
	@:overload @:public public function getAnnotationTypeRequiredMemberBuilder(annotationTypeWriter : com.sun.tools.doclets.internal.toolkit.AnnotationTypeWriter) : com.sun.tools.doclets.internal.toolkit.builders.AbstractBuilder;
	
	/**
	* Return an instance of the enum constants builder for the given class.
	*
	* @return an instance of the enum constants builder for the given class.
	*/
	@:overload @:public public function getEnumConstantsBuilder(classWriter : com.sun.tools.doclets.internal.toolkit.ClassWriter) : com.sun.tools.doclets.internal.toolkit.builders.AbstractBuilder;
	
	/**
	* Return an instance of the field builder for the given class.
	*
	* @return an instance of the field builder for the given class.
	*/
	@:overload @:public public function getFieldBuilder(classWriter : com.sun.tools.doclets.internal.toolkit.ClassWriter) : com.sun.tools.doclets.internal.toolkit.builders.AbstractBuilder;
	
	/**
	* Return an instance of the property builder for the given class.
	*
	* @return an instance of the field builder for the given class.
	*/
	@:overload @:public public function getPropertyBuilder(classWriter : com.sun.tools.doclets.internal.toolkit.ClassWriter) : com.sun.tools.doclets.internal.toolkit.builders.AbstractBuilder;
	
	/**
	* Return an instance of the constructor builder for the given class.
	*
	* @return an instance of the constructor builder for the given class.
	*/
	@:overload @:public public function getConstructorBuilder(classWriter : com.sun.tools.doclets.internal.toolkit.ClassWriter) : com.sun.tools.doclets.internal.toolkit.builders.AbstractBuilder;
	
	/**
	* Return an instance of the member summary builder for the given class.
	*
	* @return an instance of the member summary builder for the given class.
	*/
	@:overload @:public public function getMemberSummaryBuilder(classWriter : com.sun.tools.doclets.internal.toolkit.ClassWriter) : com.sun.tools.doclets.internal.toolkit.builders.AbstractBuilder;
	
	/**
	* Return an instance of the member summary builder for the given annotation
	* type.
	*
	* @return an instance of the member summary builder for the given
	*         annotation type.
	*/
	@:overload @:public public function getMemberSummaryBuilder(annotationTypeWriter : com.sun.tools.doclets.internal.toolkit.AnnotationTypeWriter) : com.sun.tools.doclets.internal.toolkit.builders.AbstractBuilder;
	
	/**
	* Return the builder that builds the serialized form.
	*
	* @return the builder that builds the serialized form.
	*/
	@:overload @:public public function getSerializedFormBuilder() : com.sun.tools.doclets.internal.toolkit.builders.AbstractBuilder;
	
	
}
