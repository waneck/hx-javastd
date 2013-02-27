package org.omg.CORBA_2_3;
/*
* Copyright (c) 1998, 2003, Oracle and/or its affiliates. All rights reserved.
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
* A class extending <code>org.omg.CORBA.ORB</code> to make the ORB
* portable under the OMG CORBA version 2.3 specification.
*/
extern class ORB extends org.omg.CORBA.ORB
{
	/**
	*
	*/
	@:overload public function register_value_factory(id : String, factory : org.omg.CORBA.portable.ValueFactory) : org.omg.CORBA.portable.ValueFactory;
	
	/**
	*
	*/
	@:overload public function unregister_value_factory(id : String) : Void;
	
	/**
	*
	*/
	@:overload public function lookup_value_factory(id : String) : org.omg.CORBA.portable.ValueFactory;
	
	/**
	* @see <a href="package-summary.html#unimpl"><code>CORBA_2_3</code> package
	*      comments for unimplemented features</a>
	*/
	@:overload public function get_value_def(repid : String) : org.omg.CORBA.Object;
	
	/**
	* @see <a href="package-summary.html#unimpl"><code>CORBA_2_3</code> package
	*      comments for unimplemented features</a>
	*/
	@:overload public function set_delegate(wrapper : Dynamic) : Void;
	
	
}
