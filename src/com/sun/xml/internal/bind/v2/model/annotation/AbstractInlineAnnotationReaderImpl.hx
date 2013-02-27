package com.sun.xml.internal.bind.v2.model.annotation;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class AbstractInlineAnnotationReaderImpl<T, C, F, M> implements com.sun.xml.internal.bind.v2.model.annotation.AnnotationReader<T, C, F, M>
{
	@:overload public function setErrorHandler(errorHandler : com.sun.xml.internal.bind.v2.model.core.ErrorHandler) : Void;
	
	/**
	* Always return a non-null valid {@link ErrorHandler}
	*/
	@:overload @:final public function getErrorHandler() : com.sun.xml.internal.bind.v2.model.core.ErrorHandler;
	
	@:overload @:final public function getMethodAnnotation<A : java.lang.annotation.Annotation>(annotation : Class<A>, getter : M, setter : M, srcPos : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : A;
	
	@:overload public function hasMethodAnnotation(annotation : Class<java.lang.annotation.Annotation>, propertyName : String, getter : M, setter : M, srcPos : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : Bool;
	
	/**
	* Gets the fully-qualified name of the method.
	*
	* Used for error messages.
	*/
	@:overload @:abstract private function fullName(m : M) : String;
	
	
}
