package com.sun.corba.se.impl.protocol;
/*
* Copyright (c) 2001, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class CorbaClientDelegateImpl extends com.sun.corba.se.spi.protocol.CorbaClientDelegate
{
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB, contactInfoList : com.sun.corba.se.spi.transport.CorbaContactInfoList) : Void;
	
	@:overload override public function getBroker() : com.sun.corba.se.pept.broker.Broker;
	
	@:overload override public function getContactInfoList() : com.sun.corba.se.pept.transport.ContactInfoList;
	
	@:overload override public function request(self : org.omg.CORBA.Object, operation : String, responseExpected : Bool) : org.omg.CORBA.portable.OutputStream;
	
	@:overload override public function invoke(self : org.omg.CORBA.Object, output : org.omg.CORBA.portable.OutputStream) : org.omg.CORBA.portable.InputStream;
	
	@:overload override public function releaseReply(self : org.omg.CORBA.Object, input : org.omg.CORBA.portable.InputStream) : Void;
	
	@:overload override public function get_interface_def(obj : org.omg.CORBA.Object) : org.omg.CORBA.Object;
	
	@:overload override public function is_a(obj : org.omg.CORBA.Object, dest : String) : Bool;
	
	@:overload override public function non_existent(obj : org.omg.CORBA.Object) : Bool;
	
	@:overload override public function duplicate(obj : org.omg.CORBA.Object) : org.omg.CORBA.Object;
	
	@:overload override public function release(obj : org.omg.CORBA.Object) : Void;
	
	@:overload override public function is_equivalent(obj : org.omg.CORBA.Object, ref : org.omg.CORBA.Object) : Bool;
	
	/**
	* This method overrides the org.omg.CORBA.portable.Delegate.equals method,
	* and does the equality check based on IOR equality.
	*/
	@:overload override public function equals(self : org.omg.CORBA.Object, other : Dynamic) : Bool;
	
	@:overload override public function hashCode(obj : org.omg.CORBA.Object) : Int;
	
	@:overload override public function hash(obj : org.omg.CORBA.Object, maximum : Int) : Int;
	
	@:overload override public function request(obj : org.omg.CORBA.Object, operation : String) : org.omg.CORBA.Request;
	
	@:overload override public function create_request(obj : org.omg.CORBA.Object, ctx : org.omg.CORBA.Context, operation : String, arg_list : org.omg.CORBA.NVList, result : org.omg.CORBA.NamedValue) : org.omg.CORBA.Request;
	
	@:overload override public function create_request(obj : org.omg.CORBA.Object, ctx : org.omg.CORBA.Context, operation : String, arg_list : org.omg.CORBA.NVList, result : org.omg.CORBA.NamedValue, exclist : org.omg.CORBA.ExceptionList, ctxlist : org.omg.CORBA.ContextList) : org.omg.CORBA.Request;
	
	@:overload override public function orb(obj : org.omg.CORBA.Object) : org.omg.CORBA.ORB;
	
	/**
	* Returns true if this object is implemented by a local servant.
	*
	* REVISIT: locatedIOR should be replaced with a method call that
	*      returns the current IOR for this request (e.g. ContactInfoChooser).
	*
	* @param self The object reference which delegated to this delegate.
	* @return true only if the servant incarnating this object is located in
	* this ORB.
	*/
	@:overload override public function is_local(self : org.omg.CORBA.Object) : Bool;
	
	@:overload override public function servant_preinvoke(self : org.omg.CORBA.Object, operation : String, expectedType : Class<Dynamic>) : org.omg.CORBA.portable.ServantObject;
	
	@:overload override public function servant_postinvoke(self : org.omg.CORBA.Object, servant : org.omg.CORBA.portable.ServantObject) : Void;
	
	/* Returns the codebase for object reference provided.
	* @param self the object reference whose codebase needs to be returned.
	* @return the codebase as a space delimited list of url strings or
	* null if none.
	*/
	@:overload public function get_codebase(self : org.omg.CORBA.Object) : String;
	
	@:overload override public function toString(self : org.omg.CORBA.Object) : String;
	
	@:overload public function hashCode() : Int;
	
	
}
