package org.omg.CORBA_2_3.portable;
/*
* Copyright (c) 1999, Oracle and/or its affiliates. All rights reserved.
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
/*
* Licensed Materials - Property of IBM
* RMI-IIOP v1.0
* Copyright IBM Corp. 1998 1999  All Rights Reserved
*
*/
/**
* Delegate class provides the ORB vendor specific implementation
* of CORBA object.  It extends org.omg.CORBA.portable.Delegate and
* provides new methods that were defined by CORBA 2.3.
*
* @see org.omg.CORBA.portable.Delegate
* @author  OMG
* @since   JDK1.2
*/
@:require(java2) extern class Delegate extends org.omg.CORBA.portable.Delegate
{
	/** Returns the codebase for object reference provided.
	* @param self the object reference whose codebase needs to be returned.
	* @return the codebase as a space delimited list of url strings or
	* null if none.
	*/
	@:overload public function get_codebase(self : org.omg.CORBA.Object) : String;
	
	
}