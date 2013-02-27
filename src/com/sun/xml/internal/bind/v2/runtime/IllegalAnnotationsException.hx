package com.sun.xml.internal.bind.v2.runtime;
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
extern class IllegalAnnotationsException extends javax.xml.bind.JAXBException
{
	@:overload public function new(errors : java.util.List<com.sun.xml.internal.bind.v2.runtime.IllegalAnnotationException>) : Void;
	
	@:overload override public function toString() : String;
	
	/**
	* Returns a read-only list of {@link IllegalAnnotationException}s
	* wrapped in this exception.
	*
	* @return
	*      a non-null list.
	*/
	@:overload public function getErrors() : java.util.List<com.sun.xml.internal.bind.v2.runtime.IllegalAnnotationException>;
	
	
}
@:native('com$sun$xml$internal$bind$v2$runtime$IllegalAnnotationsException$Builder') extern class IllegalAnnotationsException_Builder implements com.sun.xml.internal.bind.v2.model.core.ErrorHandler
{
	@:overload public function error(e : com.sun.xml.internal.bind.v2.runtime.IllegalAnnotationException) : Void;
	
	/**
	* If an error was reported, throw the exception.
	* Otherwise exit normally.
	*/
	@:overload public function check() : Void;
	
	
}
