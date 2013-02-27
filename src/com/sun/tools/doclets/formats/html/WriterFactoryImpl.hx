package com.sun.tools.doclets.formats.html;
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
* The factory that returns HTML writers.
*
* @author Jamie Ho
* @since 1.5
*/
@:require(java5) extern class WriterFactoryImpl implements com.sun.tools.doclets.internal.toolkit.WriterFactory
{
	@:overload public function new(configuration : com.sun.tools.doclets.formats.html.ConfigurationImpl) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getConstantsSummaryWriter() : com.sun.tools.doclets.internal.toolkit.ConstantsSummaryWriter;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getPackageSummaryWriter(packageDoc : com.sun.javadoc.PackageDoc, prevPkg : com.sun.javadoc.PackageDoc, nextPkg : com.sun.javadoc.PackageDoc) : com.sun.tools.doclets.internal.toolkit.PackageSummaryWriter;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getClassWriter(classDoc : com.sun.javadoc.ClassDoc, prevClass : com.sun.javadoc.ClassDoc, nextClass : com.sun.javadoc.ClassDoc, classTree : com.sun.tools.doclets.internal.toolkit.util.ClassTree) : com.sun.tools.doclets.internal.toolkit.ClassWriter;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getAnnotationTypeWriter(annotationType : com.sun.javadoc.AnnotationTypeDoc, prevType : com.sun.javadoc.Type, nextType : com.sun.javadoc.Type) : com.sun.tools.doclets.internal.toolkit.AnnotationTypeWriter;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getAnnotationTypeOptionalMemberWriter(annotationTypeWriter : com.sun.tools.doclets.internal.toolkit.AnnotationTypeWriter) : com.sun.tools.doclets.internal.toolkit.AnnotationTypeOptionalMemberWriter;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getAnnotationTypeRequiredMemberWriter(annotationTypeWriter : com.sun.tools.doclets.internal.toolkit.AnnotationTypeWriter) : com.sun.tools.doclets.internal.toolkit.AnnotationTypeRequiredMemberWriter;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getEnumConstantWriter(classWriter : com.sun.tools.doclets.internal.toolkit.ClassWriter) : com.sun.tools.doclets.internal.toolkit.EnumConstantWriter;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getFieldWriter(classWriter : com.sun.tools.doclets.internal.toolkit.ClassWriter) : com.sun.tools.doclets.internal.toolkit.FieldWriter;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getPropertyWriter(classWriter : com.sun.tools.doclets.internal.toolkit.ClassWriter) : com.sun.tools.doclets.internal.toolkit.PropertyWriter;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getMethodWriter(classWriter : com.sun.tools.doclets.internal.toolkit.ClassWriter) : com.sun.tools.doclets.internal.toolkit.MethodWriter;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getConstructorWriter(classWriter : com.sun.tools.doclets.internal.toolkit.ClassWriter) : com.sun.tools.doclets.internal.toolkit.ConstructorWriter;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getMemberSummaryWriter(classWriter : com.sun.tools.doclets.internal.toolkit.ClassWriter, memberType : Int) : com.sun.tools.doclets.internal.toolkit.MemberSummaryWriter;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getMemberSummaryWriter(annotationTypeWriter : com.sun.tools.doclets.internal.toolkit.AnnotationTypeWriter, memberType : Int) : com.sun.tools.doclets.internal.toolkit.MemberSummaryWriter;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getSerializedFormWriter() : com.sun.tools.doclets.internal.toolkit.SerializedFormWriter;
	
	
}
