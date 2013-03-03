package javax.lang.model.type;
/*
* Copyright (c) 2005, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class UnknownTypeException extends javax.lang.model.UnknownEntityException
{
	/**
	* Creates a new {@code UnknownTypeException}.The {@code p}
	* parameter may be used to pass in an additional argument with
	* information about the context in which the unknown type was
	* encountered; for example, the visit methods of {@link
	* TypeVisitor} may pass in their additional parameter.
	*
	* @param t the unknown type, may be {@code null}
	* @param p an additional parameter, may be {@code null}
	*/
	@:overload @:public public function new(t : javax.lang.model.type.TypeMirror, p : Dynamic) : Void;
	
	/**
	* Returns the unknown type.
	* The value may be unavailable if this exception has been
	* serialized and then read back in.
	*
	* @return the unknown type, or {@code null} if unavailable
	*/
	@:overload @:public public function getUnknownType() : javax.lang.model.type.TypeMirror;
	
	/**
	* Returns the additional argument.
	*
	* @return the additional argument
	*/
	@:overload @:public public function getArgument() : Dynamic;
	
	
}
