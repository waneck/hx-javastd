package com.sun.tools.doclets.internal.toolkit;
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
* The interface for a factory creates writers.
*
* This code is not part of an API.
* It is implementation that is subject to change.
* Do not use it as an API
*
* @author Jamie Ho
* @since 1.4
*/
@:require(java4) extern interface WriterFactory
{
	/**
	* Return the writer for the constant summary.
	*
	* @return the writer for the constant summary.  Return null if this
	* writer is not supported by the doclet.
	*/
	@:overload @:abstract public function getConstantsSummaryWriter() : com.sun.tools.doclets.internal.toolkit.ConstantsSummaryWriter;
	
	/**
	* Return the writer for the package summary.
	*
	* @param packageDoc the package being documented.
	* @param prevPkg the previous package that was documented.
	* @param nextPkg the next package being documented.
	* @return the writer for the package summary.  Return null if this
	* writer is not supported by the doclet.
	*/
	@:overload @:abstract public function getPackageSummaryWriter(packageDoc : com.sun.javadoc.PackageDoc, prevPkg : com.sun.javadoc.PackageDoc, nextPkg : com.sun.javadoc.PackageDoc) : com.sun.tools.doclets.internal.toolkit.PackageSummaryWriter;
	
	/**
	* Return the writer for a class.
	*
	* @param classDoc the class being documented.
	* @param prevClass the previous class that was documented.
	* @param nextClass the next class being documented.
	* @param classTree the class tree.
	* @return the writer for the class.  Return null if this
	* writer is not supported by the doclet.
	*/
	@:overload @:abstract public function getClassWriter(classDoc : com.sun.javadoc.ClassDoc, prevClass : com.sun.javadoc.ClassDoc, nextClass : com.sun.javadoc.ClassDoc, classTree : com.sun.tools.doclets.internal.toolkit.util.ClassTree) : com.sun.tools.doclets.internal.toolkit.ClassWriter;
	
	/**
	* Return the writer for an annotation type.
	*
	* @param annotationType the type being documented.
	* @param prevType the previous type that was documented.
	* @param nextType the next type being documented.
	* @return the writer for the annotation type.  Return null if this
	* writer is not supported by the doclet.
	*/
	@:overload @:abstract public function getAnnotationTypeWriter(annotationType : com.sun.javadoc.AnnotationTypeDoc, prevType : com.sun.javadoc.Type, nextType : com.sun.javadoc.Type) : com.sun.tools.doclets.internal.toolkit.AnnotationTypeWriter;
	
	/**
	* Return the method writer for a given class.
	*
	* @param classWriter the writer for the class being documented.
	* @return the method writer for the give class.  Return null if this
	* writer is not supported by the doclet.
	*/
	@:overload @:abstract public function getMethodWriter(classWriter : com.sun.tools.doclets.internal.toolkit.ClassWriter) : com.sun.tools.doclets.internal.toolkit.MethodWriter;
	
	/**
	* Return the annotation type optional member writer for a given annotation
	* type.
	*
	* @param annotationTypeWriter the writer for the annotation type
	*        being documented.
	* @return the member writer for the given annotation type.  Return null if
	*         this writer is not supported by the doclet.
	*/
	@:overload @:abstract public function getAnnotationTypeOptionalMemberWriter(annotationTypeWriter : com.sun.tools.doclets.internal.toolkit.AnnotationTypeWriter) : com.sun.tools.doclets.internal.toolkit.AnnotationTypeOptionalMemberWriter;
	
	/**
	* Return the annotation type required member writer for a given annotation type.
	*
	* @param annotationTypeWriter the writer for the annotation type
	*        being documented.
	* @return the member writer for the given annotation type.  Return null if
	*         this writer is not supported by the doclet.
	*/
	@:overload @:abstract public function getAnnotationTypeRequiredMemberWriter(annotationTypeWriter : com.sun.tools.doclets.internal.toolkit.AnnotationTypeWriter) : com.sun.tools.doclets.internal.toolkit.AnnotationTypeRequiredMemberWriter;
	
	/**
	* Return the enum constant writer for a given class.
	*
	* @param classWriter the writer for the class being documented.
	* @return the enum constant writer for the give class.  Return null if this
	* writer is not supported by the doclet.
	*/
	@:overload @:abstract public function getEnumConstantWriter(classWriter : com.sun.tools.doclets.internal.toolkit.ClassWriter) : com.sun.tools.doclets.internal.toolkit.EnumConstantWriter;
	
	/**
	* Return the field writer for a given class.
	*
	* @param classWriter the writer for the class being documented.
	* @return the field writer for the give class.  Return null if this
	* writer is not supported by the doclet.
	*/
	@:overload @:abstract public function getFieldWriter(classWriter : com.sun.tools.doclets.internal.toolkit.ClassWriter) : com.sun.tools.doclets.internal.toolkit.FieldWriter;
	
	/**
	* Return the property writer for a given class.
	*
	* @param classWriter the writer for the class being documented.
	* @return the property writer for the give class.  Return null if this
	* writer is not supported by the doclet.
	*/
	@:overload @:abstract public function getPropertyWriter(classWriter : com.sun.tools.doclets.internal.toolkit.ClassWriter) : com.sun.tools.doclets.internal.toolkit.PropertyWriter;
	
	/**
	* Return the constructor writer for a given class.
	*
	* @param classWriter the writer for the class being documented.
	* @return the method writer for the give class.  Return null if this
	* writer is not supported by the doclet.
	*/
	@:overload @:abstract public function getConstructorWriter(classWriter : com.sun.tools.doclets.internal.toolkit.ClassWriter) : com.sun.tools.doclets.internal.toolkit.ConstructorWriter;
	
	/**
	* Return the specified member summary writer for a given class.
	*
	* @param classWriter the writer for the class being documented.
	* @param memberType  the {@link VisibleMemberMap} member type indicating
	*                    the type of member summary that should be returned.
	* @return the summary writer for the give class.  Return null if this
	* writer is not supported by the doclet.
	*
	* @see VisibleMemberMap
	* @throws IllegalArgumentException if memberType is unknown.
	*/
	@:overload @:abstract public function getMemberSummaryWriter(classWriter : com.sun.tools.doclets.internal.toolkit.ClassWriter, memberType : Int) : com.sun.tools.doclets.internal.toolkit.MemberSummaryWriter;
	
	/**
	* Return the specified member summary writer for a given annotation type.
	*
	* @param annotationTypeWriter the writer for the annotation type being
	*                             documented.
	* @param memberType  the {@link VisibleMemberMap} member type indicating
	*                    the type of member summary that should be returned.
	* @return the summary writer for the give class.  Return null if this
	* writer is not supported by the doclet.
	*
	* @see VisibleMemberMap
	* @throws IllegalArgumentException if memberType is unknown.
	*/
	@:overload @:abstract public function getMemberSummaryWriter(annotationTypeWriter : com.sun.tools.doclets.internal.toolkit.AnnotationTypeWriter, memberType : Int) : com.sun.tools.doclets.internal.toolkit.MemberSummaryWriter;
	
	/**
	* Return the writer for the serialized form.
	*
	* @return the writer for the serialized form.
	*/
	@:overload public function getSerializedFormWriter() : com.sun.tools.doclets.internal.toolkit.SerializedFormWriter;
	
	
}
