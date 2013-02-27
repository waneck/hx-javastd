package com.sun.corba.se.impl.corba;
/*
* Copyright (c) 1996, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class RequestImpl extends org.omg.CORBA.Request
{
	private var _target : org.omg.CORBA.Object;
	
	private var _opName : String;
	
	private var _arguments : org.omg.CORBA.NVList;
	
	private var _exceptions : org.omg.CORBA.ExceptionList;
	
	private var _env : org.omg.CORBA.Environment;
	
	private var _orb : com.sun.corba.se.spi.orb.ORB;
	
	private var _isOneWay : Bool;
	
	private var gotResponse : Bool;
	
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB, targetObject : org.omg.CORBA.Object, ctx : org.omg.CORBA.Context, operationName : String, argumentList : org.omg.CORBA.NVList, resultContainer : org.omg.CORBA.NamedValue, exceptionList : org.omg.CORBA.ExceptionList, ctxList : org.omg.CORBA.ContextList) : Void;
	
	@:overload override public function target() : org.omg.CORBA.Object;
	
	@:overload override public function operation() : String;
	
	@:overload override public function arguments() : org.omg.CORBA.NVList;
	
	@:overload override public function result() : org.omg.CORBA.NamedValue;
	
	@:overload override public function env() : org.omg.CORBA.Environment;
	
	@:overload override public function exceptions() : org.omg.CORBA.ExceptionList;
	
	@:overload override public function contexts() : org.omg.CORBA.ContextList;
	
	@:overload @:synchronized override public function ctx() : org.omg.CORBA.Context;
	
	@:overload @:synchronized override public function ctx(newCtx : org.omg.CORBA.Context) : Void;
	
	@:overload @:synchronized override public function add_in_arg() : org.omg.CORBA.Any;
	
	@:overload @:synchronized override public function add_named_in_arg(name : String) : org.omg.CORBA.Any;
	
	@:overload @:synchronized override public function add_inout_arg() : org.omg.CORBA.Any;
	
	@:overload @:synchronized override public function add_named_inout_arg(name : String) : org.omg.CORBA.Any;
	
	@:overload @:synchronized override public function add_out_arg() : org.omg.CORBA.Any;
	
	@:overload @:synchronized override public function add_named_out_arg(name : String) : org.omg.CORBA.Any;
	
	@:overload @:synchronized override public function set_return_type(tc : org.omg.CORBA.TypeCode) : Void;
	
	@:overload @:synchronized override public function return_value() : org.omg.CORBA.Any;
	
	@:overload @:synchronized public function add_exception(exceptionType : org.omg.CORBA.TypeCode) : Void;
	
	@:overload @:synchronized override public function invoke() : Void;
	
	@:overload @:synchronized override public function send_oneway() : Void;
	
	@:overload @:synchronized override public function send_deferred() : Void;
	
	@:overload @:synchronized override public function poll_response() : Bool;
	
	@:overload @:synchronized override public function get_response() : Void;
	
	/*
	* The doInvocation operation is where the real mechanics of
	* performing the request invocation is done.
	*/
	@:overload private function doInvocation() : Void;
	
	@:overload public function unmarshalReply(is : org.omg.CORBA.portable.InputStream) : Void;
	
	
}
